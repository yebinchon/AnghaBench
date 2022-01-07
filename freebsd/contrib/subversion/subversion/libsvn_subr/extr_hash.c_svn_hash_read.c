
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int len; void* data; } ;
typedef TYPE_1__ svn_string_t ;
struct TYPE_14__ {int apr_err; } ;
typedef TYPE_2__ svn_error_t ;
typedef int buf ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_file_t ;


 scalar_t__ APR_STATUS_IS_EOF (int ) ;
 int SVN_ERR (TYPE_2__*) ;
 int SVN_ERR_MALFORMED_FILE ;
 int SVN_KEYLINE_MAXLEN ;
 TYPE_2__* SVN_NO_ERROR ;
 int apr_hash_set (int *,void*,size_t,TYPE_1__*) ;
 void* apr_palloc (int *,int) ;
 TYPE_2__* svn_cstring_atoi (int*,char*) ;
 int svn_error_clear (TYPE_2__*) ;
 TYPE_2__* svn_error_create (int ,int *,int *) ;
 TYPE_2__* svn_io_file_getc (char*,int *,int *) ;
 TYPE_2__* svn_io_file_read_full2 (int *,void*,int,int*,int *,int *) ;
 TYPE_2__* svn_io_read_length_line (int *,char*,int*,int *) ;

svn_error_t *
svn_hash_read(apr_hash_t *hash,
              apr_file_t *srcfile,
              apr_pool_t *pool)
{
  svn_error_t *err;
  char buf[SVN_KEYLINE_MAXLEN];
  apr_size_t num_read;
  char c;
  int first_time = 1;


  while (1)
    {

      apr_size_t len = sizeof(buf);

      err = svn_io_read_length_line(srcfile, buf, &len, pool);
      if (err && APR_STATUS_IS_EOF(err->apr_err) && first_time)
        {


          svn_error_clear(err);
          return SVN_NO_ERROR;
        }
      else if (err)

        return err;

      first_time = 0;

      if (((len == 3) && (buf[0] == 'E') && (buf[1] == 'N') && (buf[2] == 'D'))
          || ((len == 9)
              && (buf[0] == 'P')
              && (buf[1] == 'R')
              && (buf[2] == 'O')
              && (buf[3] == 'P')
              && (buf[4] == 'S')
              && (buf[5] == '-')
              && (buf[6] == 'E')
              && (buf[7] == 'N')
              && (buf[8] == 'D')))
        {

          return SVN_NO_ERROR;
        }
      else if ((buf[0] == 'K') && (buf[1] == ' '))
        {
          size_t keylen;
          int parsed_len;
          void *keybuf;


          SVN_ERR(svn_cstring_atoi(&parsed_len, buf + 2));
          keylen = parsed_len;


          keybuf = apr_palloc(pool, keylen + 1);
          SVN_ERR(svn_io_file_read_full2(srcfile,
                                         keybuf, keylen,
                                         &num_read, ((void*)0), pool));
          ((char *) keybuf)[keylen] = '\0';


          SVN_ERR(svn_io_file_getc(&c, srcfile, pool));
          if (c != '\n')
            return svn_error_create(SVN_ERR_MALFORMED_FILE, ((void*)0), ((void*)0));


          len = sizeof(buf);
          SVN_ERR(svn_io_read_length_line(srcfile, buf, &len, pool));

          if ((buf[0] == 'V') && (buf[1] == ' '))
            {
              svn_string_t *value = apr_palloc(pool, sizeof(*value));
              apr_size_t vallen;
              void *valbuf;


              SVN_ERR(svn_cstring_atoi(&parsed_len, buf + 2));
              vallen = parsed_len;


              valbuf = apr_palloc(pool, vallen + 1);
              SVN_ERR(svn_io_file_read_full2(srcfile,
                                             valbuf, vallen,
                                             &num_read, ((void*)0), pool));
              ((char *) valbuf)[vallen] = '\0';


              SVN_ERR(svn_io_file_getc(&c, srcfile, pool));
              if (c != '\n')
                return svn_error_create(SVN_ERR_MALFORMED_FILE, ((void*)0), ((void*)0));

              value->data = valbuf;
              value->len = vallen;


              apr_hash_set(hash, keybuf, keylen, value);
            }
          else
            {
              return svn_error_create(SVN_ERR_MALFORMED_FILE, ((void*)0), ((void*)0));
            }
        }
      else
        {
          return svn_error_create(SVN_ERR_MALFORMED_FILE, ((void*)0), ((void*)0));
        }
    }
}
