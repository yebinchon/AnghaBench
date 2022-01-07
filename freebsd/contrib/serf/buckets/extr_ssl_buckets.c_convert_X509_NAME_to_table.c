
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int X509_NAME ;


 int APR_HASH_KEY_STRING ;
 int NID_commonName ;
 int NID_countryName ;
 int NID_localityName ;
 int NID_organizationName ;
 int NID_organizationalUnitName ;
 int NID_pkcs9_emailAddress ;
 int NID_stateOrProvinceName ;
 int X509_NAME_get_text_by_NID (int *,int ,char*,int) ;
 int * apr_hash_make (int *) ;
 int apr_hash_set (int *,char*,int ,int ) ;
 int pstrdup_escape_nul_bytes (char*,int,int *) ;

__attribute__((used)) static apr_hash_t *
convert_X509_NAME_to_table(X509_NAME *org, apr_pool_t *pool)
{
    char buf[1024];
    int ret;

    apr_hash_t *tgt = apr_hash_make(pool);

    ret = X509_NAME_get_text_by_NID(org,
                                    NID_commonName,
                                    buf, 1024);
    if (ret != -1)
        apr_hash_set(tgt, "CN", APR_HASH_KEY_STRING,
                     pstrdup_escape_nul_bytes(buf, ret, pool));
    ret = X509_NAME_get_text_by_NID(org,
                                    NID_pkcs9_emailAddress,
                                    buf, 1024);
    if (ret != -1)
        apr_hash_set(tgt, "E", APR_HASH_KEY_STRING,
                     pstrdup_escape_nul_bytes(buf, ret, pool));
    ret = X509_NAME_get_text_by_NID(org,
                                    NID_organizationalUnitName,
                                    buf, 1024);
    if (ret != -1)
        apr_hash_set(tgt, "OU", APR_HASH_KEY_STRING,
                     pstrdup_escape_nul_bytes(buf, ret, pool));
    ret = X509_NAME_get_text_by_NID(org,
                                    NID_organizationName,
                                    buf, 1024);
    if (ret != -1)
        apr_hash_set(tgt, "O", APR_HASH_KEY_STRING,
                     pstrdup_escape_nul_bytes(buf, ret, pool));
    ret = X509_NAME_get_text_by_NID(org,
                                    NID_localityName,
                                    buf, 1024);
    if (ret != -1)
        apr_hash_set(tgt, "L", APR_HASH_KEY_STRING,
                     pstrdup_escape_nul_bytes(buf, ret, pool));
    ret = X509_NAME_get_text_by_NID(org,
                                    NID_stateOrProvinceName,
                                    buf, 1024);
    if (ret != -1)
        apr_hash_set(tgt, "ST", APR_HASH_KEY_STRING,
                     pstrdup_escape_nul_bytes(buf, ret, pool));
    ret = X509_NAME_get_text_by_NID(org,
                                    NID_countryName,
                                    buf, 1024);
    if (ret != -1)
        apr_hash_set(tgt, "C", APR_HASH_KEY_STRING,
                     pstrdup_escape_nul_bytes(buf, ret, pool));

    return tgt;
}
