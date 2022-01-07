
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int X509 ;
struct TYPE_4__ {int * byKey; } ;
struct TYPE_5__ {TYPE_1__ value; int type; } ;
typedef TYPE_2__ OCSP_RESPID ;
typedef int ASN1_OCTET_STRING ;


 int ASN1_OCTET_STRING_free (int *) ;
 int * ASN1_OCTET_STRING_new () ;
 int ASN1_OCTET_STRING_set (int *,unsigned char*,int) ;
 int EVP_sha1 () ;
 int SHA_DIGEST_LENGTH ;
 int V_OCSP_RESPID_KEY ;
 int X509_pubkey_digest (int *,int ,unsigned char*,int *) ;

int OCSP_RESPID_set_by_key(OCSP_RESPID *respid, X509 *cert)
{
    ASN1_OCTET_STRING *byKey = ((void*)0);
    unsigned char md[SHA_DIGEST_LENGTH];


    if (!X509_pubkey_digest(cert, EVP_sha1(), md, ((void*)0)))
        return 0;

    byKey = ASN1_OCTET_STRING_new();
    if (byKey == ((void*)0))
        return 0;

    if (!(ASN1_OCTET_STRING_set(byKey, md, SHA_DIGEST_LENGTH))) {
        ASN1_OCTET_STRING_free(byKey);
        return 0;
    }

    respid->type = V_OCSP_RESPID_KEY;
    respid->value.byKey = byKey;

    return 1;
}
