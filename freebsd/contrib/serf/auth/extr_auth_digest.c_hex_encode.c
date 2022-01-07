
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;


 int APR_MD5_DIGESTSIZE ;
 char* apr_palloc (int *,int) ;
 char int_to_hex (unsigned char const) ;

__attribute__((used)) static const char *
hex_encode(const unsigned char *hashval,
           apr_pool_t *pool)
{
    int i;
    char *hexval = apr_palloc(pool, (APR_MD5_DIGESTSIZE * 2) + 1);
    for (i = 0; i < APR_MD5_DIGESTSIZE; i++) {
        hexval[2 * i] = int_to_hex((hashval[i] >> 4) & 0xf);
        hexval[2 * i + 1] = int_to_hex(hashval[i] & 0xf);
    }
    hexval[APR_MD5_DIGESTSIZE * 2] = '\0';
    return hexval;
}
