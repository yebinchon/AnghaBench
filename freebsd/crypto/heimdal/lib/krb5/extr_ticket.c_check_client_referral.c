
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_18__ ;


typedef int krb5_keyblock ;
struct TYPE_21__ {TYPE_1__* padata; } ;
struct TYPE_23__ {TYPE_2__ kdc_rep; } ;
typedef TYPE_4__ krb5_kdc_rep ;
typedef scalar_t__ krb5_error_code ;
struct TYPE_24__ {size_t length; int data; } ;
typedef TYPE_5__ krb5_data ;
typedef int krb5_crypto ;
typedef int krb5_context ;
typedef TYPE_6__* krb5_const_principal ;
struct TYPE_19__ {int mapped_name; int requested_name; } ;
struct TYPE_27__ {TYPE_18__ names; int canon_checksum; } ;
struct TYPE_22__ {int length; int data; } ;
struct TYPE_26__ {TYPE_3__ padata_value; } ;
struct TYPE_25__ {int realm; } ;
struct TYPE_20__ {int len; int val; } ;
typedef TYPE_7__ PA_DATA ;
typedef TYPE_8__ PA_ClientCanonicalized ;


 int ASN1_MALLOC_ENCODE (int ,int ,size_t,TYPE_18__*,size_t*,scalar_t__) ;
 scalar_t__ FALSE ;
 scalar_t__ KRB5KRB_AP_ERR_MODIFIED ;
 int KRB5_KU_CANONICALIZED_NAMES ;
 int KRB5_PADATA_CLIENT_CANONICALIZED ;
 scalar_t__ KRB5_PRINC_NOMATCH ;
 int N_ (char*,char*) ;
 int PA_ClientCanonicalizedNames ;
 int _krb5_principal_compare_PrincipalName (int ,TYPE_6__*,int *) ;
 scalar_t__ decode_PA_ClientCanonicalized (int ,int ,TYPE_8__*,size_t*) ;
 int free (int ) ;
 int free_PA_ClientCanonicalized (TYPE_8__*) ;
 int krb5_abortx (int ,char*) ;
 int krb5_crypto_destroy (int ,int ) ;
 scalar_t__ krb5_crypto_init (int ,int const*,int ,int *) ;
 TYPE_7__* krb5_find_padata (int ,int ,int ,int*) ;
 scalar_t__ krb5_principal_compare (int ,TYPE_6__*,TYPE_6__*) ;
 int krb5_set_error_message (int ,scalar_t__,int ,...) ;
 scalar_t__ krb5_verify_checksum (int ,int ,int ,int ,size_t,int *) ;

__attribute__((used)) static krb5_error_code
check_client_referral(krb5_context context,
        krb5_kdc_rep *rep,
        krb5_const_principal requested,
        krb5_const_principal mapped,
        krb5_keyblock const * key)
{
    krb5_error_code ret;
    PA_ClientCanonicalized canon;
    krb5_crypto crypto;
    krb5_data data;
    PA_DATA *pa;
    size_t len;
    int i = 0;

    if (rep->kdc_rep.padata == ((void*)0))
 goto noreferral;

    pa = krb5_find_padata(rep->kdc_rep.padata->val,
     rep->kdc_rep.padata->len,
     KRB5_PADATA_CLIENT_CANONICALIZED, &i);
    if (pa == ((void*)0))
 goto noreferral;

    ret = decode_PA_ClientCanonicalized(pa->padata_value.data,
     pa->padata_value.length,
     &canon, &len);
    if (ret) {
 krb5_set_error_message(context, ret,
          N_("Failed to decode ClientCanonicalized "
      "from realm %s", ""), requested->realm);
 return ret;
    }

    ASN1_MALLOC_ENCODE(PA_ClientCanonicalizedNames, data.data, data.length,
         &canon.names, &len, ret);
    if (ret) {
 free_PA_ClientCanonicalized(&canon);
 return ret;
    }
    if (data.length != len)
 krb5_abortx(context, "internal asn.1 error");

    ret = krb5_crypto_init(context, key, 0, &crypto);
    if (ret) {
 free(data.data);
 free_PA_ClientCanonicalized(&canon);
 return ret;
    }

    ret = krb5_verify_checksum(context, crypto, KRB5_KU_CANONICALIZED_NAMES,
          data.data, data.length,
          &canon.canon_checksum);
    krb5_crypto_destroy(context, crypto);
    free(data.data);
    if (ret) {
 krb5_set_error_message(context, ret,
          N_("Failed to verify client canonicalized "
      "data from realm %s", ""),
          requested->realm);
 free_PA_ClientCanonicalized(&canon);
 return ret;
    }

    if (!_krb5_principal_compare_PrincipalName(context,
            requested,
            &canon.names.requested_name))
    {
 free_PA_ClientCanonicalized(&canon);
 krb5_set_error_message(context, KRB5_PRINC_NOMATCH,
          N_("Requested name doesn't match"
      " in client referral", ""));
 return KRB5_PRINC_NOMATCH;
    }
    if (!_krb5_principal_compare_PrincipalName(context,
            mapped,
            &canon.names.mapped_name))
    {
 free_PA_ClientCanonicalized(&canon);
 krb5_set_error_message(context, KRB5_PRINC_NOMATCH,
          N_("Mapped name doesn't match"
      " in client referral", ""));
 return KRB5_PRINC_NOMATCH;
    }

    return 0;

noreferral:
    if (krb5_principal_compare(context, requested, mapped) == FALSE) {
 krb5_set_error_message(context, KRB5KRB_AP_ERR_MODIFIED,
          N_("Not same client principal returned "
      "as requested", ""));
 return KRB5KRB_AP_ERR_MODIFIED;
    }
    return 0;
}
