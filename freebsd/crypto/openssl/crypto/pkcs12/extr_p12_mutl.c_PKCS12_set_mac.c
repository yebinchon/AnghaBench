
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* mac; } ;
struct TYPE_6__ {int dinfo; } ;
typedef TYPE_2__ PKCS12 ;
typedef int EVP_MD ;
typedef int ASN1_OCTET_STRING ;


 int ASN1_OCTET_STRING_set (int *,unsigned char*,unsigned int) ;
 int EVP_MAX_MD_SIZE ;
 int * EVP_sha1 () ;
 scalar_t__ PKCS12_ERROR ;
 int PKCS12_F_PKCS12_SET_MAC ;
 int PKCS12_R_MAC_GENERATION_ERROR ;
 int PKCS12_R_MAC_SETUP_ERROR ;
 int PKCS12_R_MAC_STRING_SET_ERROR ;
 int PKCS12_key_gen_utf8 ;
 scalar_t__ PKCS12_setup_mac (TYPE_2__*,int,unsigned char*,int,int const*) ;
 int PKCS12err (int ,int ) ;
 int X509_SIG_getm (int ,int *,int **) ;
 int pkcs12_gen_mac (TYPE_2__*,char const*,int,unsigned char*,unsigned int*,int ) ;

int PKCS12_set_mac(PKCS12 *p12, const char *pass, int passlen,
                   unsigned char *salt, int saltlen, int iter,
                   const EVP_MD *md_type)
{
    unsigned char mac[EVP_MAX_MD_SIZE];
    unsigned int maclen;
    ASN1_OCTET_STRING *macoct;

    if (!md_type)
        md_type = EVP_sha1();
    if (PKCS12_setup_mac(p12, iter, salt, saltlen, md_type) == PKCS12_ERROR) {
        PKCS12err(PKCS12_F_PKCS12_SET_MAC, PKCS12_R_MAC_SETUP_ERROR);
        return 0;
    }



    if (!pkcs12_gen_mac(p12, pass, passlen, mac, &maclen,
                        PKCS12_key_gen_utf8)) {
        PKCS12err(PKCS12_F_PKCS12_SET_MAC, PKCS12_R_MAC_GENERATION_ERROR);
        return 0;
    }
    X509_SIG_getm(p12->mac->dinfo, ((void*)0), &macoct);
    if (!ASN1_OCTET_STRING_set(macoct, mac, maclen)) {
        PKCS12err(PKCS12_F_PKCS12_SET_MAC, PKCS12_R_MAC_STRING_SET_ERROR);
        return 0;
    }
    return 1;
}
