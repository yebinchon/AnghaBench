
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;


 char* apr_palloc (int *,scalar_t__) ;
 char* encode_number (int ,char*) ;
 int memcpy (char*,char const*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;

const char*
svn_fs_fs__combine_number_and_string(apr_int64_t number,
                                     const char *string,
                                     apr_pool_t *pool)
{
  apr_size_t len = strlen(string);



  char *key_buffer = apr_palloc(pool, len + 12);
  const char *key = key_buffer;




  key_buffer = encode_number(number, key_buffer);
  *++key_buffer = ' ';
  memcpy(++key_buffer, string, len+1);


  return key;
}
