
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_13__ {TYPE_1__* pkeys; scalar_t__ dh_tmp_auto; int * dh_tmp_cb; int * dh_tmp; } ;
struct TYPE_12__ {TYPE_3__* s3; TYPE_5__* cert; } ;
struct TYPE_10__ {int* valid_flags; unsigned long mask_k; unsigned long mask_a; } ;
struct TYPE_11__ {TYPE_2__ tmp; } ;
struct TYPE_9__ {int x509; } ;
typedef TYPE_4__ SSL ;
typedef TYPE_5__ CERT ;


 int CERT_PKEY_EXPLICIT_SIGN ;
 int CERT_PKEY_SIGN ;
 int CERT_PKEY_VALID ;
 size_t SSL_PKEY_DSA_SIGN ;
 size_t SSL_PKEY_ECC ;
 size_t SSL_PKEY_ED25519 ;
 size_t SSL_PKEY_ED448 ;
 size_t SSL_PKEY_GOST01 ;
 size_t SSL_PKEY_GOST12_256 ;
 size_t SSL_PKEY_GOST12_512 ;
 size_t SSL_PKEY_RSA ;
 size_t SSL_PKEY_RSA_PSS_SIGN ;
 unsigned long SSL_aDSS ;
 unsigned long SSL_aECDSA ;
 unsigned long SSL_aGOST01 ;
 unsigned long SSL_aGOST12 ;
 unsigned long SSL_aNULL ;
 unsigned long SSL_aPSK ;
 unsigned long SSL_aRSA ;
 unsigned long SSL_kDHE ;
 unsigned long SSL_kDHEPSK ;
 unsigned long SSL_kECDHE ;
 unsigned long SSL_kECDHEPSK ;
 unsigned long SSL_kGOST ;
 unsigned long SSL_kPSK ;
 unsigned long SSL_kRSA ;
 unsigned long SSL_kRSAPSK ;
 scalar_t__ TLS1_2_VERSION ;
 scalar_t__ TLS1_get_version (TYPE_4__*) ;
 int X509_get_key_usage (int ) ;
 int X509v3_KU_DIGITAL_SIGNATURE ;
 int fprintf (int ,char*,int,int,int,int) ;
 scalar_t__ ssl_has_cert (TYPE_4__*,size_t) ;
 int stderr ;

void ssl_set_masks(SSL *s)
{
    CERT *c = s->cert;
    uint32_t *pvalid = s->s3->tmp.valid_flags;
    int rsa_enc, rsa_sign, dh_tmp, dsa_sign;
    unsigned long mask_k, mask_a;

    int have_ecc_cert, ecdsa_ok;

    if (c == ((void*)0))
        return;


    dh_tmp = (c->dh_tmp != ((void*)0) || c->dh_tmp_cb != ((void*)0) || c->dh_tmp_auto);




    rsa_enc = pvalid[SSL_PKEY_RSA] & CERT_PKEY_VALID;
    rsa_sign = pvalid[SSL_PKEY_RSA] & CERT_PKEY_VALID;
    dsa_sign = pvalid[SSL_PKEY_DSA_SIGN] & CERT_PKEY_VALID;

    have_ecc_cert = pvalid[SSL_PKEY_ECC] & CERT_PKEY_VALID;

    mask_k = 0;
    mask_a = 0;







    if (ssl_has_cert(s, SSL_PKEY_GOST12_512)) {
        mask_k |= SSL_kGOST;
        mask_a |= SSL_aGOST12;
    }
    if (ssl_has_cert(s, SSL_PKEY_GOST12_256)) {
        mask_k |= SSL_kGOST;
        mask_a |= SSL_aGOST12;
    }
    if (ssl_has_cert(s, SSL_PKEY_GOST01)) {
        mask_k |= SSL_kGOST;
        mask_a |= SSL_aGOST01;
    }


    if (rsa_enc)
        mask_k |= SSL_kRSA;

    if (dh_tmp)
        mask_k |= SSL_kDHE;






    if (rsa_enc || rsa_sign || (ssl_has_cert(s, SSL_PKEY_RSA_PSS_SIGN)
                && pvalid[SSL_PKEY_RSA_PSS_SIGN] & CERT_PKEY_EXPLICIT_SIGN
                && TLS1_get_version(s) == TLS1_2_VERSION))
        mask_a |= SSL_aRSA;

    if (dsa_sign) {
        mask_a |= SSL_aDSS;
    }

    mask_a |= SSL_aNULL;






    if (have_ecc_cert) {
        uint32_t ex_kusage;
        ex_kusage = X509_get_key_usage(c->pkeys[SSL_PKEY_ECC].x509);
        ecdsa_ok = ex_kusage & X509v3_KU_DIGITAL_SIGNATURE;
        if (!(pvalid[SSL_PKEY_ECC] & CERT_PKEY_SIGN))
            ecdsa_ok = 0;
        if (ecdsa_ok)
            mask_a |= SSL_aECDSA;
    }

    if (!(mask_a & SSL_aECDSA) && ssl_has_cert(s, SSL_PKEY_ED25519)
            && pvalid[SSL_PKEY_ED25519] & CERT_PKEY_EXPLICIT_SIGN
            && TLS1_get_version(s) == TLS1_2_VERSION)
            mask_a |= SSL_aECDSA;


    if (!(mask_a & SSL_aECDSA) && ssl_has_cert(s, SSL_PKEY_ED448)
            && pvalid[SSL_PKEY_ED448] & CERT_PKEY_EXPLICIT_SIGN
            && TLS1_get_version(s) == TLS1_2_VERSION)
            mask_a |= SSL_aECDSA;



    mask_k |= SSL_kECDHE;



    mask_k |= SSL_kPSK;
    mask_a |= SSL_aPSK;
    if (mask_k & SSL_kRSA)
        mask_k |= SSL_kRSAPSK;
    if (mask_k & SSL_kDHE)
        mask_k |= SSL_kDHEPSK;
    if (mask_k & SSL_kECDHE)
        mask_k |= SSL_kECDHEPSK;


    s->s3->tmp.mask_k = mask_k;
    s->s3->tmp.mask_a = mask_a;
}
