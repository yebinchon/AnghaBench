
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void ASN1_OCTET_STRING ;


 int ASN1_OCTET_STRING_free (void*) ;
 void* ASN1_OCTET_STRING_new () ;
 int ASN1_OCTET_STRING_set (void*,unsigned char const*,long) ;
 int ERR_R_MALLOC_FAILURE ;
 int OCSP_F_D2I_OCSP_NONCE ;
 int OCSPerr (int ,int ) ;

__attribute__((used)) static void *d2i_ocsp_nonce(void *a, const unsigned char **pp, long length)
{
    ASN1_OCTET_STRING *os, **pos;
    pos = a;
    if (pos == ((void*)0) || *pos == ((void*)0)) {
        os = ASN1_OCTET_STRING_new();
        if (os == ((void*)0))
            goto err;
    } else {
        os = *pos;
    }
    if (!ASN1_OCTET_STRING_set(os, *pp, length))
        goto err;

    *pp += length;

    if (pos)
        *pos = os;
    return os;

 err:
    if ((pos == ((void*)0)) || (*pos != os))
        ASN1_OCTET_STRING_free(os);
    OCSPerr(OCSP_F_D2I_OCSP_NONCE, ERR_R_MALLOC_FAILURE);
    return ((void*)0);
}
