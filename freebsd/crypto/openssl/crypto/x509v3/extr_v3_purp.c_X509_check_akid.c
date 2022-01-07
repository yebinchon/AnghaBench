
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int X509_NAME ;
struct TYPE_11__ {scalar_t__ skid; } ;
typedef TYPE_2__ X509 ;
struct TYPE_13__ {int * issuer; scalar_t__ serial; scalar_t__ keyid; } ;
struct TYPE_10__ {int * dirn; } ;
struct TYPE_12__ {scalar_t__ type; TYPE_1__ d; } ;
typedef int GENERAL_NAMES ;
typedef TYPE_3__ GENERAL_NAME ;
typedef TYPE_4__ AUTHORITY_KEYID ;


 scalar_t__ ASN1_INTEGER_cmp (int ,scalar_t__) ;
 scalar_t__ ASN1_OCTET_STRING_cmp (scalar_t__,scalar_t__) ;
 scalar_t__ GEN_DIRNAME ;
 scalar_t__ X509_NAME_cmp (int *,int ) ;
 int X509_V_ERR_AKID_ISSUER_SERIAL_MISMATCH ;
 int X509_V_ERR_AKID_SKID_MISMATCH ;
 int X509_V_OK ;
 int X509_get_issuer_name (TYPE_2__*) ;
 int X509_get_serialNumber (TYPE_2__*) ;
 int sk_GENERAL_NAME_num (int *) ;
 TYPE_3__* sk_GENERAL_NAME_value (int *,int) ;

int X509_check_akid(X509 *issuer, AUTHORITY_KEYID *akid)
{

    if (!akid)
        return X509_V_OK;


    if (akid->keyid && issuer->skid &&
        ASN1_OCTET_STRING_cmp(akid->keyid, issuer->skid))
        return X509_V_ERR_AKID_SKID_MISMATCH;

    if (akid->serial &&
        ASN1_INTEGER_cmp(X509_get_serialNumber(issuer), akid->serial))
        return X509_V_ERR_AKID_ISSUER_SERIAL_MISMATCH;

    if (akid->issuer) {





        GENERAL_NAMES *gens;
        GENERAL_NAME *gen;
        X509_NAME *nm = ((void*)0);
        int i;
        gens = akid->issuer;
        for (i = 0; i < sk_GENERAL_NAME_num(gens); i++) {
            gen = sk_GENERAL_NAME_value(gens, i);
            if (gen->type == GEN_DIRNAME) {
                nm = gen->d.dirn;
                break;
            }
        }
        if (nm && X509_NAME_cmp(nm, X509_get_issuer_name(issuer)))
            return X509_V_ERR_AKID_ISSUER_SERIAL_MISMATCH;
    }
    return X509_V_OK;
}
