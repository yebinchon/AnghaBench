
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ len; char* data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
struct TYPE_9__ {char* data; scalar_t__ len; } ;
typedef TYPE_2__ svn_string_t ;
typedef int svn_stream_t ;
struct TYPE_10__ {int (* delete_node_property ) (void*,char*) ;int (* set_revision_property ) (void*,char*,TYPE_2__*) ;int (* set_node_property ) (void*,char*,TYPE_2__*) ;} ;
typedef TYPE_3__ svn_repos_parse_fns3_t ;
typedef scalar_t__ svn_filesize_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef scalar_t__ apr_uint64_t ;
typedef scalar_t__ apr_size_t ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_int64_t ;


 int APR_SIZE_MAX ;
 int SVN_ERR (int ) ;
 int SVN_ERR_STREAM_MALFORMED_DATA ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int read_key_or_val (char**,scalar_t__*,int *,scalar_t__,int *) ;
 int strcmp (char*,char*) ;
 int * stream_malformed () ;
 int * stream_ran_dry () ;
 int stub1 (void*,char*,TYPE_2__*) ;
 int stub2 (void*,char*,TYPE_2__*) ;
 int stub3 (void*,char*) ;
 int svn_cstring_atoi64 (scalar_t__*,char*) ;
 int svn_cstring_strtoui64 (scalar_t__*,char*,int ,int ,int) ;
 int * svn_error_create (int ,int *,int ) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_stream_readline (int *,TYPE_1__**,char*,scalar_t__*,int *) ;

__attribute__((used)) static svn_error_t *
parse_property_block(svn_stream_t *stream,
                     svn_filesize_t content_length,
                     const svn_repos_parse_fns3_t *parse_fns,
                     void *record_baton,
                     void *parse_baton,
                     svn_boolean_t is_node,
                     svn_filesize_t *actual_length,
                     apr_pool_t *pool)
{
  svn_stringbuf_t *strbuf;
  apr_pool_t *proppool = svn_pool_create(pool);

  *actual_length = 0;
  while (content_length != *actual_length)
    {
      char *buf;
      svn_boolean_t eof;

      svn_pool_clear(proppool);


      SVN_ERR(svn_stream_readline(stream, &strbuf, "\n", &eof, proppool));

      if (eof)
        {


          return svn_error_create
            (SVN_ERR_STREAM_MALFORMED_DATA, ((void*)0),
             _("Incomplete or unterminated property block"));
        }

      *actual_length += (strbuf->len + 1);
      buf = strbuf->data;

      if (! strcmp(buf, "PROPS-END"))
        break;

      else if ((buf[0] == 'K') && (buf[1] == ' '))
        {
          char *keybuf;
          apr_uint64_t len;

          SVN_ERR(svn_cstring_strtoui64(&len, buf + 2, 0, APR_SIZE_MAX, 10));
          SVN_ERR(read_key_or_val(&keybuf, actual_length,
                                  stream, (apr_size_t)len, proppool));


          SVN_ERR(svn_stream_readline(stream, &strbuf, "\n", &eof, proppool));
          if (eof)
            return stream_ran_dry();

          *actual_length += (strbuf->len + 1);
          buf = strbuf->data;

          if ((buf[0] == 'V') && (buf[1] == ' '))
            {
              svn_string_t propstring;
              char *valbuf;
              apr_int64_t val;

              SVN_ERR(svn_cstring_atoi64(&val, buf + 2));
              propstring.len = (apr_size_t)val;
              SVN_ERR(read_key_or_val(&valbuf, actual_length,
                                      stream, propstring.len, proppool));
              propstring.data = valbuf;


              if (is_node)
                {
                  SVN_ERR(parse_fns->set_node_property(record_baton,
                                                       keybuf,
                                                       &propstring));
                }
              else
                {
                  SVN_ERR(parse_fns->set_revision_property(record_baton,
                                                           keybuf,
                                                           &propstring));
                }
            }
          else
            return stream_malformed();
        }
      else if ((buf[0] == 'D') && (buf[1] == ' '))
        {
          char *keybuf;
          apr_uint64_t len;

          SVN_ERR(svn_cstring_strtoui64(&len, buf + 2, 0, APR_SIZE_MAX, 10));
          SVN_ERR(read_key_or_val(&keybuf, actual_length,
                                  stream, (apr_size_t)len, proppool));




          if (!is_node || !parse_fns->delete_node_property)
            return stream_malformed();

          SVN_ERR(parse_fns->delete_node_property(record_baton, keybuf));
        }
      else
        return stream_malformed();

    }

  svn_pool_destroy(proppool);
  return SVN_NO_ERROR;
}
