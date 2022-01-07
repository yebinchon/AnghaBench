
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_41__ TYPE_9__ ;
typedef struct TYPE_40__ TYPE_8__ ;
typedef struct TYPE_39__ TYPE_7__ ;
typedef struct TYPE_38__ TYPE_6__ ;
typedef struct TYPE_37__ TYPE_5__ ;
typedef struct TYPE_36__ TYPE_4__ ;
typedef struct TYPE_35__ TYPE_3__ ;
typedef struct TYPE_34__ TYPE_2__ ;
typedef struct TYPE_33__ TYPE_25__ ;
typedef struct TYPE_32__ TYPE_1__ ;
typedef struct TYPE_31__ TYPE_12__ ;
typedef struct TYPE_30__ TYPE_11__ ;
typedef struct TYPE_29__ TYPE_10__ ;


typedef int time_t ;
struct sockaddr {int dummy; } ;
struct TYPE_34__ {int key; } ;
struct TYPE_37__ {TYPE_2__ ticket; } ;
typedef TYPE_5__ krb5_ticket ;
typedef int krb5_principal ;
typedef int krb5_keyblock ;
typedef int krb5_kdc_configuration ;
typedef scalar_t__ krb5_flags ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_enctype ;
struct TYPE_38__ {int length; int data; } ;
typedef TYPE_6__ krb5_data ;
typedef int krb5_crypto ;
typedef int krb5_context ;
typedef TYPE_7__* krb5_authenticator ;
typedef int * krb5_auth_context ;
struct TYPE_35__ {int etype; int * kvno; } ;
struct TYPE_36__ {TYPE_3__ enc_part; int realm; int sname; } ;
struct TYPE_40__ {TYPE_4__ ticket; } ;
typedef TYPE_8__ krb5_ap_req ;
struct TYPE_33__ {int kvno; } ;
struct TYPE_41__ {TYPE_25__ entry; } ;
typedef TYPE_9__ hdb_entry_ex ;
typedef int ap_req ;
struct TYPE_39__ {int cusec; int ctime; } ;
struct TYPE_32__ {scalar_t__ validate; } ;
struct TYPE_31__ {int enc_authorization_data; TYPE_1__ kdc_options; } ;
struct TYPE_30__ {int key; } ;
struct TYPE_29__ {int padata_value; } ;
typedef TYPE_10__ PA_DATA ;
typedef TYPE_11__ Key ;
typedef TYPE_12__ KDC_REQ_BODY ;
typedef char AuthorizationData ;


 int ALLOC (char*) ;
 scalar_t__ HDB_ERR_NOT_FOUND_HERE ;
 int HDB_F_GET_KRBTGT ;
 scalar_t__ KRB5KDC_ERR_POLICY ;
 scalar_t__ KRB5KRB_AP_ERR_BADKEYVER ;
 scalar_t__ KRB5KRB_AP_ERR_BAD_INTEGRITY ;
 scalar_t__ KRB5KRB_AP_ERR_NOT_US ;
 int KRB5_KU_TGS_REQ_AUTH ;
 unsigned int KRB5_KU_TGS_REQ_AUTH_DAT_SESSION ;
 unsigned int KRB5_KU_TGS_REQ_AUTH_DAT_SUBKEY ;
 scalar_t__ KRB5_VERIFY_AP_REQ_IGNORE_INVALID ;
 scalar_t__ _kdc_db_fetch (int ,int *,int ,int ,int *,int *,TYPE_9__**) ;
 int _krb5_principalname2krb5_principal (int ,int *,int ,int ) ;
 scalar_t__ decode_AuthorizationData (int ,int ,char*,int *) ;
 int free (char*) ;
 int free_AP_REQ (TYPE_8__*) ;
 int get_krbtgt_realm (int *) ;
 scalar_t__ hdb_enctype2key (int ,TYPE_25__*,int ,TYPE_11__**) ;
 int kdc_log (int ,int *,int,char*,...) ;
 int krb5_auth_con_free (int ,int *) ;
 scalar_t__ krb5_auth_con_getauthenticator (int ,int *,TYPE_7__**) ;
 scalar_t__ krb5_auth_con_getkey (int ,int *,int **) ;
 scalar_t__ krb5_auth_con_getremotesubkey (int ,int *,int **) ;
 int krb5_crypto_destroy (int ,int ) ;
 scalar_t__ krb5_crypto_init (int ,int *,int ,int *) ;
 scalar_t__ krb5_decode_ap_req (int ,int *,TYPE_8__*) ;
 scalar_t__ krb5_decrypt_EncryptedData (int ,int ,unsigned int,int ,TYPE_6__*) ;
 int krb5_enctype_to_string (int ,int ,char**) ;
 int krb5_free_authenticator (int ,TYPE_7__**) ;
 int krb5_free_error_message (int ,char const*) ;
 int krb5_free_principal (int ,int ) ;
 char* krb5_get_error_message (int ,scalar_t__) ;
 scalar_t__ krb5_unparse_name (int ,int ,char**) ;
 scalar_t__ krb5_verify_ap_req2 (int ,int **,TYPE_8__*,int ,int *,scalar_t__,scalar_t__*,TYPE_5__**,int ) ;
 void* malloc (int) ;
 int memset (TYPE_8__*,int ,int) ;
 scalar_t__ tgs_check_authenticator (int ,int *,int *,TYPE_12__*,char const**,int *) ;

__attribute__((used)) static krb5_error_code
tgs_parse_request(krb5_context context,
    krb5_kdc_configuration *config,
    KDC_REQ_BODY *b,
    const PA_DATA *tgs_req,
    hdb_entry_ex **krbtgt,
    krb5_enctype *krbtgt_etype,
    krb5_ticket **ticket,
    const char **e_text,
    const char *from,
    const struct sockaddr *from_addr,
    time_t **csec,
    int **cusec,
    AuthorizationData **auth_data,
    krb5_keyblock **replykey,
    int *rk_is_subkey)
{
    static char failed[] = "<unparse_name failed>";
    krb5_ap_req ap_req;
    krb5_error_code ret;
    krb5_principal princ;
    krb5_auth_context ac = ((void*)0);
    krb5_flags ap_req_options;
    krb5_flags verify_ap_req_flags;
    krb5_crypto crypto;
    Key *tkey;
    krb5_keyblock *subkey = ((void*)0);
    unsigned usage;

    *auth_data = ((void*)0);
    *csec = ((void*)0);
    *cusec = ((void*)0);
    *replykey = ((void*)0);

    memset(&ap_req, 0, sizeof(ap_req));
    ret = krb5_decode_ap_req(context, &tgs_req->padata_value, &ap_req);
    if(ret){
 const char *msg = krb5_get_error_message(context, ret);
 kdc_log(context, config, 0, "Failed to decode AP-REQ: %s", msg);
 krb5_free_error_message(context, msg);
 goto out;
    }

    if(!get_krbtgt_realm(&ap_req.ticket.sname)){

 kdc_log(context, config, 0, "PA-DATA is not a ticket-granting ticket");
 ret = KRB5KDC_ERR_POLICY;
 goto out;
    }

    _krb5_principalname2krb5_principal(context,
           &princ,
           ap_req.ticket.sname,
           ap_req.ticket.realm);

    ret = _kdc_db_fetch(context, config, princ, HDB_F_GET_KRBTGT, ap_req.ticket.enc_part.kvno, ((void*)0), krbtgt);

    if(ret == HDB_ERR_NOT_FOUND_HERE) {
 char *p;
 ret = krb5_unparse_name(context, princ, &p);
 if (ret != 0)
     p = failed;
 krb5_free_principal(context, princ);
 kdc_log(context, config, 5, "Ticket-granting ticket account %s does not have secrets at this KDC, need to proxy", p);
 if (ret == 0)
     free(p);
 ret = HDB_ERR_NOT_FOUND_HERE;
 goto out;
    } else if(ret){
 const char *msg = krb5_get_error_message(context, ret);
 char *p;
 ret = krb5_unparse_name(context, princ, &p);
 if (ret != 0)
     p = failed;
 krb5_free_principal(context, princ);
 kdc_log(context, config, 0,
  "Ticket-granting ticket not found in database: %s", msg);
 krb5_free_error_message(context, msg);
 if (ret == 0)
     free(p);
 ret = KRB5KRB_AP_ERR_NOT_US;
 goto out;
    }

    if(ap_req.ticket.enc_part.kvno &&
       *ap_req.ticket.enc_part.kvno != (*krbtgt)->entry.kvno){
 char *p;

 ret = krb5_unparse_name (context, princ, &p);
 krb5_free_principal(context, princ);
 if (ret != 0)
     p = failed;
 kdc_log(context, config, 0,
  "Ticket kvno = %d, DB kvno = %d (%s)",
  *ap_req.ticket.enc_part.kvno,
  (*krbtgt)->entry.kvno,
  p);
 if (ret == 0)
     free (p);
 ret = KRB5KRB_AP_ERR_BADKEYVER;
 goto out;
    }

    *krbtgt_etype = ap_req.ticket.enc_part.etype;

    ret = hdb_enctype2key(context, &(*krbtgt)->entry,
     ap_req.ticket.enc_part.etype, &tkey);
    if(ret){
 char *str = ((void*)0), *p = ((void*)0);

 krb5_enctype_to_string(context, ap_req.ticket.enc_part.etype, &str);
 krb5_unparse_name(context, princ, &p);
  kdc_log(context, config, 0,
  "No server key with enctype %s found for %s",
  str ? str : "<unknown enctype>",
  p ? p : "<unparse_name failed>");
 free(str);
 free(p);
 ret = KRB5KRB_AP_ERR_BADKEYVER;
 goto out;
    }

    if (b->kdc_options.validate)
 verify_ap_req_flags = KRB5_VERIFY_AP_REQ_IGNORE_INVALID;
    else
 verify_ap_req_flags = 0;

    ret = krb5_verify_ap_req2(context,
         &ac,
         &ap_req,
         princ,
         &tkey->key,
         verify_ap_req_flags,
         &ap_req_options,
         ticket,
         KRB5_KU_TGS_REQ_AUTH);

    krb5_free_principal(context, princ);
    if(ret) {
 const char *msg = krb5_get_error_message(context, ret);
 kdc_log(context, config, 0, "Failed to verify AP-REQ: %s", msg);
 krb5_free_error_message(context, msg);
 goto out;
    }

    {
 krb5_authenticator auth;

 ret = krb5_auth_con_getauthenticator(context, ac, &auth);
 if (ret == 0) {
     *csec = malloc(sizeof(**csec));
     if (*csec == ((void*)0)) {
  krb5_free_authenticator(context, &auth);
  kdc_log(context, config, 0, "malloc failed");
  goto out;
     }
     **csec = auth->ctime;
     *cusec = malloc(sizeof(**cusec));
     if (*cusec == ((void*)0)) {
  krb5_free_authenticator(context, &auth);
  kdc_log(context, config, 0, "malloc failed");
  goto out;
     }
     **cusec = auth->cusec;
     krb5_free_authenticator(context, &auth);
 }
    }

    ret = tgs_check_authenticator(context, config,
      ac, b, e_text, &(*ticket)->ticket.key);
    if (ret) {
 krb5_auth_con_free(context, ac);
 goto out;
    }

    usage = KRB5_KU_TGS_REQ_AUTH_DAT_SUBKEY;
    *rk_is_subkey = 1;

    ret = krb5_auth_con_getremotesubkey(context, ac, &subkey);
    if(ret){
 const char *msg = krb5_get_error_message(context, ret);
 krb5_auth_con_free(context, ac);
 kdc_log(context, config, 0, "Failed to get remote subkey: %s", msg);
 krb5_free_error_message(context, msg);
 goto out;
    }
    if(subkey == ((void*)0)){
 usage = KRB5_KU_TGS_REQ_AUTH_DAT_SESSION;
 *rk_is_subkey = 0;

 ret = krb5_auth_con_getkey(context, ac, &subkey);
 if(ret) {
     const char *msg = krb5_get_error_message(context, ret);
     krb5_auth_con_free(context, ac);
     kdc_log(context, config, 0, "Failed to get session key: %s", msg);
     krb5_free_error_message(context, msg);
     goto out;
 }
    }
    if(subkey == ((void*)0)){
 krb5_auth_con_free(context, ac);
 kdc_log(context, config, 0,
  "Failed to get key for enc-authorization-data");
 ret = KRB5KRB_AP_ERR_BAD_INTEGRITY;
 goto out;
    }

    *replykey = subkey;

    if (b->enc_authorization_data) {
 krb5_data ad;

 ret = krb5_crypto_init(context, subkey, 0, &crypto);
 if (ret) {
     const char *msg = krb5_get_error_message(context, ret);
     krb5_auth_con_free(context, ac);
     kdc_log(context, config, 0, "krb5_crypto_init failed: %s", msg);
     krb5_free_error_message(context, msg);
     goto out;
 }
 ret = krb5_decrypt_EncryptedData (context,
       crypto,
       usage,
       b->enc_authorization_data,
       &ad);
 krb5_crypto_destroy(context, crypto);
 if(ret){
     krb5_auth_con_free(context, ac);
     kdc_log(context, config, 0,
      "Failed to decrypt enc-authorization-data");
     ret = KRB5KRB_AP_ERR_BAD_INTEGRITY;
     goto out;
 }
 ALLOC(*auth_data);
 if (*auth_data == ((void*)0)) {
     krb5_auth_con_free(context, ac);
     ret = KRB5KRB_AP_ERR_BAD_INTEGRITY;
     goto out;
 }
 ret = decode_AuthorizationData(ad.data, ad.length, *auth_data, ((void*)0));
 if(ret){
     krb5_auth_con_free(context, ac);
     free(*auth_data);
     *auth_data = ((void*)0);
     kdc_log(context, config, 0, "Failed to decode authorization data");
     ret = KRB5KRB_AP_ERR_BAD_INTEGRITY;
     goto out;
 }
    }

    krb5_auth_con_free(context, ac);

out:
    free_AP_REQ(&ap_req);

    return ret;
}
