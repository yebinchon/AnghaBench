
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* data; size_t len; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef size_t apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_STREAM_MALFORMED_DATA ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * apr_hash_make (int *) ;
 int * stream_ran_dry () ;
 int * svn_error_createf (int ,int *,int ,char*) ;
 int svn_hash_sets (int *,char const*,char const*) ;
 int svn_stream_readline (int *,TYPE_1__**,char*,scalar_t__*,int *) ;
 scalar_t__ svn_stringbuf_isempty (TYPE_1__*) ;

__attribute__((used)) static svn_error_t *
read_header_block(svn_stream_t *stream,
                  svn_stringbuf_t *first_header,
                  apr_hash_t **headers,
                  apr_pool_t *pool)
{
  *headers = apr_hash_make(pool);

  while (1)
    {
      svn_stringbuf_t *header_str;
      const char *name, *value;
      svn_boolean_t eof;
      apr_size_t i = 0;

      if (first_header != ((void*)0))
        {
          header_str = first_header;
          first_header = ((void*)0);
          eof = FALSE;
        }

      else

        SVN_ERR(svn_stream_readline(stream, &header_str, "\n", &eof, pool));

      if (svn_stringbuf_isempty(header_str))
        break;
      else if (eof)
        return stream_ran_dry();


      while (header_str->data[i] != ':')
        {
          if (header_str->data[i] == '\0')
            return svn_error_createf(SVN_ERR_STREAM_MALFORMED_DATA, ((void*)0),
                                     _("Dump stream contains a malformed "
                                       "header (with no ':') at '%.20s'"),
                                     header_str->data);
          i++;
        }

      header_str->data[i] = '\0';
      name = header_str->data;


      i += 2;
      if (i > header_str->len)
        return svn_error_createf(SVN_ERR_STREAM_MALFORMED_DATA, ((void*)0),
                                 _("Dump stream contains a malformed "
                                   "header (with no value) at '%.20s'"),
                                 header_str->data);


      value = header_str->data + i;


      svn_hash_sets(*headers, name, value);
    }

  return SVN_NO_ERROR;
}
