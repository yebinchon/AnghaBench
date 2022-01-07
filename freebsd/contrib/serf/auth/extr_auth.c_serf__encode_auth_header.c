
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ apr_size_t ;
typedef int apr_pool_t ;


 int apr_base64_encode (char*,char const*,scalar_t__) ;
 scalar_t__ apr_base64_encode_len (scalar_t__) ;
 int apr_cpystrn (char*,char const*,scalar_t__) ;
 char* apr_palloc (int *,scalar_t__) ;
 scalar_t__ strlen (char const*) ;

void serf__encode_auth_header(const char **header,
                              const char *scheme,
                              const char *data, apr_size_t data_len,
                              apr_pool_t *pool)
{
    apr_size_t encoded_len, scheme_len;
    char *ptr;

    encoded_len = apr_base64_encode_len(data_len);
    scheme_len = strlen(scheme);

    ptr = apr_palloc(pool, encoded_len + scheme_len + 1);
    *header = ptr;

    apr_cpystrn(ptr, scheme, scheme_len + 1);
    ptr += scheme_len;
    *ptr++ = ' ';

    apr_base64_encode(ptr, data, data_len);
}
