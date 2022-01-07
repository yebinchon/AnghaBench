
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef int krb5_key_usage ;
typedef int krb5_flags ;
typedef scalar_t__ krb5_error_code ;
struct TYPE_20__ {int length; int data; } ;
typedef TYPE_1__ krb5_data ;
typedef int * krb5_crypto ;
struct TYPE_21__ {int session; } ;
typedef TYPE_2__ krb5_creds ;
typedef int krb5_context ;
typedef TYPE_3__* krb5_auth_context ;
struct TYPE_23__ {scalar_t__ keytype; } ;
struct TYPE_22__ {TYPE_4__* keyblock; int * local_subkey; } ;
typedef int Checksum ;


 int const AP_OPTS_USE_SUBKEY ;
 int CKSUMTYPE_RSA_MD4 ;
 int CKSUMTYPE_RSA_MD5 ;
 scalar_t__ ETYPE_ARCFOUR_HMAC_MD5 ;
 scalar_t__ ETYPE_ARCFOUR_HMAC_MD5_56 ;
 scalar_t__ ETYPE_DES_CBC_CRC ;
 scalar_t__ ETYPE_DES_CBC_MD4 ;
 scalar_t__ ETYPE_DES_CBC_MD5 ;
 scalar_t__ _krb5_build_authenticator (int ,TYPE_3__*,scalar_t__,TYPE_2__*,int *,TYPE_1__*,int ) ;
 int free_Checksum (int *) ;
 int krb5_auth_con_free (int ,TYPE_3__*) ;
 scalar_t__ krb5_auth_con_generatelocalsubkey (int ,TYPE_3__*,int *) ;
 scalar_t__ krb5_auth_con_init (int ,TYPE_3__**) ;
 scalar_t__ krb5_build_ap_req (int ,scalar_t__,TYPE_2__*,int const,TYPE_1__,TYPE_1__*) ;
 scalar_t__ krb5_copy_keyblock (int ,int *,TYPE_4__**) ;
 scalar_t__ krb5_create_checksum (int ,int *,int ,int ,int ,int ,int *) ;
 int krb5_crypto_destroy (int ,int *) ;
 scalar_t__ krb5_crypto_init (int ,TYPE_4__*,int ,int **) ;
 int krb5_free_keyblock (int ,TYPE_4__*) ;

krb5_error_code
_krb5_mk_req_internal(krb5_context context,
        krb5_auth_context *auth_context,
        const krb5_flags ap_req_options,
        krb5_data *in_data,
        krb5_creds *in_creds,
        krb5_data *outbuf,
        krb5_key_usage checksum_usage,
        krb5_key_usage encrypt_usage)
{
    krb5_error_code ret;
    krb5_data authenticator;
    Checksum c;
    Checksum *c_opt;
    krb5_auth_context ac;

    if(auth_context) {
 if(*auth_context == ((void*)0))
     ret = krb5_auth_con_init(context, auth_context);
 else
     ret = 0;
 ac = *auth_context;
    } else
 ret = krb5_auth_con_init(context, &ac);
    if(ret)
 return ret;

    if(ac->local_subkey == ((void*)0) && (ap_req_options & AP_OPTS_USE_SUBKEY)) {
 ret = krb5_auth_con_generatelocalsubkey(context,
      ac,
      &in_creds->session);
 if(ret)
     goto out;
    }

    krb5_free_keyblock(context, ac->keyblock);
    ret = krb5_copy_keyblock(context, &in_creds->session, &ac->keyblock);
    if (ret)
 goto out;






    if (in_data) {
 if(ac->keyblock->keytype == ETYPE_DES_CBC_CRC) {

     ret = krb5_create_checksum(context,
           ((void*)0),
           0,
           CKSUMTYPE_RSA_MD4,
           in_data->data,
           in_data->length,
           &c);
 } else if(ac->keyblock->keytype == ETYPE_ARCFOUR_HMAC_MD5 ||
    ac->keyblock->keytype == ETYPE_ARCFOUR_HMAC_MD5_56 ||
    ac->keyblock->keytype == ETYPE_DES_CBC_MD4 ||
    ac->keyblock->keytype == ETYPE_DES_CBC_MD5) {

     ret = krb5_create_checksum(context,
           ((void*)0),
           0,
           CKSUMTYPE_RSA_MD5,
           in_data->data,
           in_data->length,
           &c);
 } else {
     krb5_crypto crypto;

     ret = krb5_crypto_init(context, ac->keyblock, 0, &crypto);
     if (ret)
  goto out;
     ret = krb5_create_checksum(context,
           crypto,
           checksum_usage,
           0,
           in_data->data,
           in_data->length,
           &c);
     krb5_crypto_destroy(context, crypto);
 }
 c_opt = &c;
    } else {
 c_opt = ((void*)0);
    }

    if (ret)
 goto out;

    ret = _krb5_build_authenticator(context,
        ac,
        ac->keyblock->keytype,
        in_creds,
        c_opt,
        &authenticator,
        encrypt_usage);
    if (c_opt)
 free_Checksum (c_opt);
    if (ret)
 goto out;

    ret = krb5_build_ap_req (context, ac->keyblock->keytype,
        in_creds, ap_req_options, authenticator, outbuf);
out:
    if(auth_context == ((void*)0))
 krb5_auth_con_free(context, ac);
    return ret;
}
