
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_size_t ;
typedef int apr_pool_t ;


 char* apr_palloc (int *,int) ;

const char *
svn__digest_to_cstring_display(const unsigned char digest[],
                               apr_size_t digest_size,
                               apr_pool_t *pool)
{
  static const char *hex = "0123456789abcdef";
  char *str = apr_palloc(pool, (digest_size * 2) + 1);
  apr_size_t i;

  for (i = 0; i < digest_size; i++)
    {
      str[i*2] = hex[digest[i] >> 4];
      str[i*2+1] = hex[digest[i] & 0x0f];
    }
  str[i*2] = '\0';

  return str;
}
