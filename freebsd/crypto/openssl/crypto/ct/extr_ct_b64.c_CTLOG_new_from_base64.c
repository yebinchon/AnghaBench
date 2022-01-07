
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY ;
typedef int CTLOG ;


 int * CTLOG_new (int *,char const*) ;
 int CT_F_CTLOG_NEW_FROM_BASE64 ;
 int CT_R_LOG_CONF_INVALID_KEY ;
 int CTerr (int ,int ) ;
 int ERR_R_PASSED_INVALID_ARGUMENT ;
 int EVP_PKEY_free (int *) ;
 int OPENSSL_free (unsigned char*) ;
 int ct_base64_decode (char const*,unsigned char**) ;
 int * d2i_PUBKEY (int *,unsigned char const**,int) ;

int CTLOG_new_from_base64(CTLOG **ct_log, const char *pkey_base64, const char *name)
{
    unsigned char *pkey_der = ((void*)0);
    int pkey_der_len;
    const unsigned char *p;
    EVP_PKEY *pkey = ((void*)0);

    if (ct_log == ((void*)0)) {
        CTerr(CT_F_CTLOG_NEW_FROM_BASE64, ERR_R_PASSED_INVALID_ARGUMENT);
        return 0;
    }

    pkey_der_len = ct_base64_decode(pkey_base64, &pkey_der);
    if (pkey_der_len < 0) {
        CTerr(CT_F_CTLOG_NEW_FROM_BASE64, CT_R_LOG_CONF_INVALID_KEY);
        return 0;
    }

    p = pkey_der;
    pkey = d2i_PUBKEY(((void*)0), &p, pkey_der_len);
    OPENSSL_free(pkey_der);
    if (pkey == ((void*)0)) {
        CTerr(CT_F_CTLOG_NEW_FROM_BASE64, CT_R_LOG_CONF_INVALID_KEY);
        return 0;
    }

    *ct_log = CTLOG_new(pkey, name);
    if (*ct_log == ((void*)0)) {
        EVP_PKEY_free(pkey);
        return 0;
    }

    return 1;
}
