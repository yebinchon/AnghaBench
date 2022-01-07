
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int krb5_keyblock ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_crypto ;
typedef int krb5_context ;
struct TYPE_6__ {scalar_t__ len; } ;
typedef TYPE_1__ krb5_authdata ;
struct TYPE_7__ {unsigned char* enc_authorization_data; } ;
typedef TYPE_2__ KDC_REQ_BODY ;


 int ALLOC (unsigned char*,int) ;
 int ASN1_MALLOC_ENCODE (int ,unsigned char*,size_t,TYPE_1__*,size_t*,scalar_t__) ;
 int AuthorizationData ;
 scalar_t__ ENOMEM ;
 int KRB5_KU_TGS_REQ_AUTH_DAT_SUBKEY ;
 int N_ (char*,char*) ;
 int free (unsigned char*) ;
 int krb5_abortx (int ,char*) ;
 int krb5_crypto_destroy (int ,int ) ;
 scalar_t__ krb5_crypto_init (int ,int *,int ,int *) ;
 int krb5_encrypt_EncryptedData (int ,int ,int ,unsigned char*,size_t,int ,unsigned char*) ;
 int krb5_set_error_message (int ,scalar_t__,int ) ;

__attribute__((used)) static krb5_error_code
set_auth_data (krb5_context context,
        KDC_REQ_BODY *req_body,
        krb5_authdata *authdata,
        krb5_keyblock *subkey)
{
    if(authdata->len) {
 size_t len = 0, buf_size;
 unsigned char *buf;
 krb5_crypto crypto;
 krb5_error_code ret;

 ASN1_MALLOC_ENCODE(AuthorizationData, buf, buf_size, authdata,
      &len, ret);
 if (ret)
     return ret;
 if (buf_size != len)
     krb5_abortx(context, "internal error in ASN.1 encoder");

 ALLOC(req_body->enc_authorization_data, 1);
 if (req_body->enc_authorization_data == ((void*)0)) {
     free (buf);
     krb5_set_error_message(context, ENOMEM,
       N_("malloc: out of memory", ""));
     return ENOMEM;
 }
 ret = krb5_crypto_init(context, subkey, 0, &crypto);
 if (ret) {
     free (buf);
     free (req_body->enc_authorization_data);
     req_body->enc_authorization_data = ((void*)0);
     return ret;
 }
 krb5_encrypt_EncryptedData(context,
       crypto,
       KRB5_KU_TGS_REQ_AUTH_DAT_SUBKEY,
       buf,
       len,
       0,
       req_body->enc_authorization_data);
 free (buf);
 krb5_crypto_destroy(context, crypto);
    } else {
 req_body->enc_authorization_data = ((void*)0);
    }
    return 0;
}
