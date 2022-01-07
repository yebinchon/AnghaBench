
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ len; int * data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_stream_t ;
struct TYPE_12__ {int (* close_revision ) (void*) ;int (* close_node ) (void*) ;int (* remove_node_props ) (void*) ;int (* uuid_record ) (char const*,void*,int *) ;int (* new_node_record ) (void**,int *,void*,int *) ;int (* new_revision_record ) (void**,int *,void*,int *) ;int (* magic_header_record ) (int,void*,int *) ;} ;
typedef TYPE_2__ svn_repos_parse_fns3_t ;
typedef scalar_t__ svn_filesize_t ;
typedef int svn_error_t ;
typedef int (* svn_cancel_func_t ) (void*) ;
typedef int svn_boolean_t ;
typedef scalar_t__ apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_STREAM_MALFORMED_DATA ;
 int * SVN_NO_ERROR ;
 int SVN_REPOS_DUMPFILE_CONTENT_LENGTH ;
 int SVN_REPOS_DUMPFILE_MAGIC_HEADER ;
 int SVN_REPOS_DUMPFILE_NODE_KIND ;
 int SVN_REPOS_DUMPFILE_NODE_PATH ;
 int SVN_REPOS_DUMPFILE_PROP_CONTENT_LENGTH ;
 int SVN_REPOS_DUMPFILE_PROP_DELTA ;
 int SVN_REPOS_DUMPFILE_REVISION_NUMBER ;
 int SVN_REPOS_DUMPFILE_TEXT_CONTENT_LENGTH ;
 int SVN_REPOS_DUMPFILE_TEXT_DELTA ;
 int SVN_REPOS_DUMPFILE_UUID ;
 scalar_t__ SVN__STREAM_CHUNK_SIZE ;
 int TRUE ;
 int _ (char*) ;
 char* apr_palloc (int *,scalar_t__) ;
 TYPE_2__* complete_vtable (TYPE_2__ const*,int *) ;
 int parse_format_version (int*,int *) ;
 int parse_property_block (int *,scalar_t__,TYPE_2__ const*,void*,void*,int,scalar_t__*,int *) ;
 int parse_text_block (int *,scalar_t__,int,TYPE_2__ const*,void*,char*,scalar_t__,int *) ;
 int read_header_block (int *,TYPE_1__*,int **,int *) ;
 scalar_t__ strcmp (char const*,char*) ;
 int * stream_ran_dry () ;
 int stub1 (int,void*,int *) ;
 int stub2 (void*) ;
 int stub3 (void**,int *,void*,int *) ;
 int stub4 (void**,int *,void*,int *) ;
 int stub5 (char const*,void*,int *) ;
 int stub6 (void*) ;
 int stub7 (void*) ;
 int stub8 (void*) ;
 scalar_t__ svn__atoui64 (char const*) ;
 int svn_cstring_atoi (int*,char const*) ;
 scalar_t__ svn_ctype_isspace (int ) ;
 int * svn_error_create (int ,int *,int ) ;
 char* svn_hash_gets (int *,int ) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_stream_read_full (int *,char*,scalar_t__*) ;
 int svn_stream_readline (int *,TYPE_1__**,char*,int*,int *) ;
 scalar_t__ svn_stringbuf_isempty (TYPE_1__*) ;

svn_error_t *
svn_repos_parse_dumpstream3(svn_stream_t *stream,
                            const svn_repos_parse_fns3_t *parse_fns,
                            void *parse_baton,
                            svn_boolean_t deltas_are_text,
                            svn_cancel_func_t cancel_func,
                            void *cancel_baton,
                            apr_pool_t *pool)
{
  svn_boolean_t eof;
  svn_stringbuf_t *linebuf;
  void *rev_baton = ((void*)0);
  char *buffer = apr_palloc(pool, SVN__STREAM_CHUNK_SIZE);
  apr_size_t buflen = SVN__STREAM_CHUNK_SIZE;
  apr_pool_t *linepool = svn_pool_create(pool);
  apr_pool_t *revpool = svn_pool_create(pool);
  apr_pool_t *nodepool = svn_pool_create(pool);
  int version;


  parse_fns = complete_vtable(parse_fns, pool);


  SVN_ERR(svn_stream_readline(stream, &linebuf, "\n", &eof, linepool));
  if (eof)
    return stream_ran_dry();




  SVN_ERR(parse_format_version(&version, linebuf->data));
  if (parse_fns->magic_header_record != ((void*)0))
    SVN_ERR(parse_fns->magic_header_record(version, parse_baton, pool));
  while (1)
    {
      apr_hash_t *headers;
      void *node_baton;
      svn_boolean_t found_node = FALSE;
      svn_boolean_t old_v1_with_cl = FALSE;
      const char *content_length;
      const char *prop_cl;
      const char *text_cl;
      const char *value;
      svn_filesize_t actual_prop_length;


      svn_pool_clear(linepool);


      if (cancel_func)
        SVN_ERR(cancel_func(cancel_baton));



      SVN_ERR(svn_stream_readline(stream, &linebuf, "\n", &eof, linepool));

      if (eof)
        {
          if (svn_stringbuf_isempty(linebuf))
            break;
          else
            return stream_ran_dry();
        }

      if ((linebuf->len == 0) || (svn_ctype_isspace(linebuf->data[0])))
        continue;





      SVN_ERR(read_header_block(stream, linebuf, &headers, linepool));




      if (svn_hash_gets(headers, SVN_REPOS_DUMPFILE_REVISION_NUMBER))
        {


          if (rev_baton != ((void*)0))
            {
              SVN_ERR(parse_fns->close_revision(rev_baton));
              svn_pool_clear(revpool);
            }

          SVN_ERR(parse_fns->new_revision_record(&rev_baton,
                                                 headers, parse_baton,
                                                 revpool));
        }

      else if (svn_hash_gets(headers, SVN_REPOS_DUMPFILE_NODE_PATH))
        {
          SVN_ERR(parse_fns->new_node_record(&node_baton,
                                             headers,
                                             rev_baton,
                                             nodepool));
          found_node = TRUE;
        }

      else if ((value = svn_hash_gets(headers, SVN_REPOS_DUMPFILE_UUID)))
        {
          SVN_ERR(parse_fns->uuid_record(value, parse_baton, pool));
        }


      else if ((value = svn_hash_gets(headers,
                                      SVN_REPOS_DUMPFILE_MAGIC_HEADER)))
        {

          SVN_ERR(svn_cstring_atoi(&version, value));
        }

      else
        {

          return svn_error_create(SVN_ERR_STREAM_MALFORMED_DATA, ((void*)0),
                                  _("Unrecognized record type in stream"));
        }







      content_length = svn_hash_gets(headers,
                                     SVN_REPOS_DUMPFILE_CONTENT_LENGTH);
      prop_cl = svn_hash_gets(headers, SVN_REPOS_DUMPFILE_PROP_CONTENT_LENGTH);
      text_cl = svn_hash_gets(headers, SVN_REPOS_DUMPFILE_TEXT_CONTENT_LENGTH);
      old_v1_with_cl =
        version == 1 && content_length && ! prop_cl && ! text_cl;


      if (prop_cl || old_v1_with_cl)
        {
          const char *delta = svn_hash_gets(headers,
                                            SVN_REPOS_DUMPFILE_PROP_DELTA);
          svn_boolean_t is_delta = (delta && strcmp(delta, "true") == 0);



          if (found_node && !is_delta)
            SVN_ERR(parse_fns->remove_node_props(node_baton));

          SVN_ERR(parse_property_block
                  (stream,
                   svn__atoui64(prop_cl ? prop_cl : content_length),
                   parse_fns,
                   found_node ? node_baton : rev_baton,
                   parse_baton,
                   found_node,
                   &actual_prop_length,
                   found_node ? nodepool : revpool));
        }


      if (text_cl)
        {
          const char *delta = svn_hash_gets(headers,
                                            SVN_REPOS_DUMPFILE_TEXT_DELTA);
          svn_boolean_t is_delta = FALSE;
          if (! deltas_are_text)
            is_delta = (delta && strcmp(delta, "true") == 0);

          SVN_ERR(parse_text_block(stream,
                                   svn__atoui64(text_cl),
                                   is_delta,
                                   parse_fns,
                                   found_node ? node_baton : rev_baton,
                                   buffer,
                                   buflen,
                                   found_node ? nodepool : revpool));
        }
      else if (old_v1_with_cl)
        {
          const char *node_kind;
          svn_filesize_t cl_value = svn__atoui64(content_length)
                                    - actual_prop_length;

          if (cl_value ||
              ((node_kind = svn_hash_gets(headers,
                                          SVN_REPOS_DUMPFILE_NODE_KIND))
               && strcmp(node_kind, "file") == 0)
             )
            SVN_ERR(parse_text_block(stream,
                                     cl_value,
                                     FALSE,
                                     parse_fns,
                                     found_node ? node_baton : rev_baton,
                                     buffer,
                                     buflen,
                                     found_node ? nodepool : revpool));
        }





      if (content_length && ! old_v1_with_cl)
        {
          apr_size_t rlen, num_to_read;
          svn_filesize_t remaining =
            svn__atoui64(content_length) -
            (prop_cl ? svn__atoui64(prop_cl) : 0) -
            (text_cl ? svn__atoui64(text_cl) : 0);


          if (remaining < 0)
            return svn_error_create(SVN_ERR_STREAM_MALFORMED_DATA, ((void*)0),
                                    _("Sum of subblock sizes larger than "
                                      "total block content length"));


          while (remaining > 0)
            {
              if (remaining >= (svn_filesize_t)buflen)
                rlen = buflen;
              else
                rlen = (apr_size_t) remaining;

              num_to_read = rlen;
              SVN_ERR(svn_stream_read_full(stream, buffer, &rlen));
              remaining -= rlen;
              if (rlen != num_to_read)
                return stream_ran_dry();
            }
        }



      if (found_node)
        {
          SVN_ERR(parse_fns->close_node(node_baton));
          svn_pool_clear(nodepool);
        }



    }


  if (rev_baton != ((void*)0))
    SVN_ERR(parse_fns->close_revision(rev_baton));

  svn_pool_destroy(linepool);
  svn_pool_destroy(revpool);
  svn_pool_destroy(nodepool);
  return SVN_NO_ERROR;
}
