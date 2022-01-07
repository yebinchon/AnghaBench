
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t len; char* data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
typedef int svn_stream_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef size_t apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_CORRUPT ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int apr_hash_set (int *,char const*,size_t,char const*) ;
 int * svn_error_createf (int ,int *,int ,char*) ;
 int * svn_hash__make (int *) ;
 int svn_stream_readline (int *,TYPE_1__**,char*,scalar_t__*,int *) ;

__attribute__((used)) static svn_error_t *
read_header_block(apr_hash_t **headers,
                  svn_stream_t *stream,
                  apr_pool_t *result_pool)
{
  *headers = svn_hash__make(result_pool);

  while (1)
    {
      svn_stringbuf_t *header_str;
      const char *name, *value;
      apr_size_t i = 0;
      apr_size_t name_len;
      svn_boolean_t eof;

      SVN_ERR(svn_stream_readline(stream, &header_str, "\n", &eof,
                                  result_pool));

      if (eof || header_str->len == 0)
        break;

      while (header_str->data[i] != ':')
        {
          if (header_str->data[i] == '\0')
            return svn_error_createf(SVN_ERR_FS_CORRUPT, ((void*)0),
                                     _("Found malformed header '%s' in "
                                       "revision file"),
                                     header_str->data);
          i++;
        }


      header_str->data[i] = '\0';
      name = header_str->data;
      name_len = i;


      if (i + 2 > header_str->len)
        {

          header_str->data[i] = ':';
          return svn_error_createf(SVN_ERR_FS_CORRUPT, ((void*)0),
                                   _("Found malformed header '%s' in "
                                     "revision file"),
                                   header_str->data);
        }


      i += 2;

      value = header_str->data + i;



      apr_hash_set(*headers, name, name_len, value);
    }

  return SVN_NO_ERROR;
}
