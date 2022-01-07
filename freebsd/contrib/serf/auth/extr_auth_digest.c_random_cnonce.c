
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_uuid_t ;
typedef int apr_pool_t ;


 scalar_t__ APR_UUID_FORMATTED_LENGTH ;
 char* apr_palloc (int *,scalar_t__) ;
 int apr_uuid_format (char*,int *) ;
 int apr_uuid_get (int *) ;
 char const* hex_encode (unsigned char*,int *) ;

__attribute__((used)) static const char *
random_cnonce(apr_pool_t *pool)
{
    apr_uuid_t uuid;
    char *buf = apr_palloc(pool, APR_UUID_FORMATTED_LENGTH + 1);

    apr_uuid_get(&uuid);
    apr_uuid_format(buf, &uuid);

    return hex_encode((unsigned char*)buf, pool);
}
