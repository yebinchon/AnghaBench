
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_CERT_LOOKUP ;
typedef int EVP_PKEY ;


 int EVP_PKEY_id (int const*) ;
 int NID_undef ;
 int const* ssl_cert_info ;
 int ssl_cert_lookup_by_nid (int,size_t*) ;

const SSL_CERT_LOOKUP *ssl_cert_lookup_by_pkey(const EVP_PKEY *pk, size_t *pidx)
{
    int nid = EVP_PKEY_id(pk);
    size_t tmpidx;

    if (nid == NID_undef)
        return ((void*)0);

    if (!ssl_cert_lookup_by_nid(nid, &tmpidx))
        return ((void*)0);

    if (pidx != ((void*)0))
        *pidx = tmpidx;

    return &ssl_cert_info[tmpidx];
}
