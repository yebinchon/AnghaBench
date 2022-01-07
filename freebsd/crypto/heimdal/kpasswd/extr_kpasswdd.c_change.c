
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct sockaddr {int dummy; } ;
struct TYPE_26__ {char* realm; int name; } ;
typedef TYPE_1__ krb5_principal_data ;
typedef TYPE_2__* krb5_principal ;
typedef scalar_t__ krb5_error_code ;
struct TYPE_28__ {char* data; int length; } ;
typedef TYPE_3__ krb5_data ;
typedef int krb5_auth_context ;
struct TYPE_29__ {char** targrealm; int mask; int realm; int * targname; TYPE_3__ newpasswd; } ;
typedef TYPE_4__ kadm5_config_params ;
typedef int conf ;
typedef int chpw ;
struct TYPE_27__ {int realm; } ;
typedef TYPE_4__ ChangePasswdDataMS ;


 int KADM5_ADMIN_SERVICE ;
 int KADM5_CONFIG_REALM ;
 int KADM5_PRIV_CPW ;
 int KRB5_KPASSWD_HARDERROR ;
 int KRB5_KPASSWD_MALFORMED ;
 int KRB5_KPASSWD_SOFTERROR ;
 int KRB5_KPASSWD_SUCCESS ;
 scalar_t__ KRB5_KPASSWD_VERS_CHANGEPW ;
 scalar_t__ KRB5_KPASSWD_VERS_SETPW ;
 scalar_t__ TRUE ;
 scalar_t__ _kadm5_acl_check_permission (void*,int ,TYPE_2__*) ;
 int context ;
 scalar_t__ decode_ChangePasswdDataMS (char*,int,TYPE_4__*,size_t*) ;
 int free (char*) ;
 int free_ChangePasswdDataMS (TYPE_4__*) ;
 char* kadm5_check_password_quality (int ,TYPE_2__*,TYPE_3__*) ;
 int kadm5_destroy (void*) ;
 scalar_t__ kadm5_init_with_password_ctx (int ,char*,int *,int ,TYPE_4__*,int ,int ,void**) ;
 scalar_t__ kadm5_s_chpass_principal_cond (void*,TYPE_2__*,char*) ;
 scalar_t__ krb5_copy_data (int ,TYPE_3__*,TYPE_3__**) ;
 scalar_t__ krb5_copy_principal (int ,TYPE_1__*,TYPE_2__**) ;
 scalar_t__ krb5_data_realloc (TYPE_3__*,int) ;
 int krb5_free_data (int ,TYPE_3__*) ;
 int krb5_free_error_message (int ,char const*) ;
 int krb5_free_principal (int ,TYPE_2__*) ;
 scalar_t__ krb5_get_default_realm (int ,char**) ;
 char* krb5_get_error_message (int ,scalar_t__) ;
 scalar_t__ krb5_principal_compare (int ,TYPE_2__*,TYPE_2__*) ;
 scalar_t__ krb5_unparse_name (int ,TYPE_2__*,char**) ;
 int krb5_warn (int ,scalar_t__,char*,...) ;
 int krb5_warnx (int ,char*,...) ;
 int memset (TYPE_4__*,int ,int) ;
 int reply_priv (int ,int,struct sockaddr*,int,int,char const*) ;

__attribute__((used)) static void
change (krb5_auth_context auth_context,
 krb5_principal admin_principal,
 uint16_t version,
 int s,
 struct sockaddr *sa,
 int sa_size,
 krb5_data *in_data)
{
    krb5_error_code ret;
    char *client = ((void*)0), *admin = ((void*)0);
    const char *pwd_reason;
    kadm5_config_params conf;
    void *kadm5_handle = ((void*)0);
    krb5_principal principal = ((void*)0);
    krb5_data *pwd_data = ((void*)0);
    char *tmp;
    ChangePasswdDataMS chpw;

    memset (&conf, 0, sizeof(conf));
    memset(&chpw, 0, sizeof(chpw));

    if (version == KRB5_KPASSWD_VERS_CHANGEPW) {
 ret = krb5_copy_data(context, in_data, &pwd_data);
 if (ret) {
     krb5_warn (context, ret, "krb5_copy_data");
     reply_priv (auth_context, s, sa, sa_size, KRB5_KPASSWD_MALFORMED,
   "out out memory copying password");
     return;
 }
 principal = admin_principal;
    } else if (version == KRB5_KPASSWD_VERS_SETPW) {
 size_t len;

 ret = decode_ChangePasswdDataMS(in_data->data, in_data->length,
     &chpw, &len);
 if (ret) {
     krb5_warn (context, ret, "decode_ChangePasswdDataMS");
     reply_priv (auth_context, s, sa, sa_size, KRB5_KPASSWD_MALFORMED,
   "malformed ChangePasswdData");
     return;
 }


 ret = krb5_copy_data(context, &chpw.newpasswd, &pwd_data);
 if (ret) {
     krb5_warn (context, ret, "krb5_copy_data");
     reply_priv (auth_context, s, sa, sa_size, KRB5_KPASSWD_MALFORMED,
   "out out memory copying password");
     goto out;
 }

 if (chpw.targname == ((void*)0) && chpw.targrealm != ((void*)0)) {
     krb5_warn (context, ret, "kadm5_init_with_password_ctx");
     reply_priv (auth_context, s, sa, sa_size,
   KRB5_KPASSWD_MALFORMED,
   "targrealm but not targname");
     goto out;
 }

 if (chpw.targname) {
     krb5_principal_data princ;

     princ.name = *chpw.targname;
     princ.realm = *chpw.targrealm;
     if (princ.realm == ((void*)0)) {
  ret = krb5_get_default_realm(context, &princ.realm);

  if (ret) {
      krb5_warnx (context,
    "kadm5_init_with_password_ctx: "
    "failed to allocate realm");
      reply_priv (auth_context, s, sa, sa_size,
    KRB5_KPASSWD_SOFTERROR,
    "failed to allocate realm");
      goto out;
  }
     }
     ret = krb5_copy_principal(context, &princ, &principal);
     if (*chpw.targrealm == ((void*)0))
  free(princ.realm);
     if (ret) {
  krb5_warn(context, ret, "krb5_copy_principal");
  reply_priv(auth_context, s, sa, sa_size,
      KRB5_KPASSWD_HARDERROR,
      "failed to allocate principal");
  goto out;
     }
 } else
     principal = admin_principal;
    } else {
 krb5_warnx (context, "kadm5_init_with_password_ctx: unknown proto");
 reply_priv (auth_context, s, sa, sa_size,
      KRB5_KPASSWD_HARDERROR,
      "Unknown protocol used");
 return;
    }

    ret = krb5_unparse_name (context, admin_principal, &admin);
    if (ret) {
 krb5_warn (context, ret, "unparse_name failed");
 reply_priv (auth_context, s, sa, sa_size,
      KRB5_KPASSWD_HARDERROR, "out of memory error");
 goto out;
    }

    conf.realm = principal->realm;
    conf.mask |= KADM5_CONFIG_REALM;

    ret = kadm5_init_with_password_ctx(context,
           admin,
           ((void*)0),
           KADM5_ADMIN_SERVICE,
           &conf, 0, 0,
           &kadm5_handle);
    if (ret) {
 krb5_warn (context, ret, "kadm5_init_with_password_ctx");
 reply_priv (auth_context, s, sa, sa_size, 2,
      "Internal error");
 goto out;
    }

    ret = krb5_unparse_name(context, principal, &client);
    if (ret) {
 krb5_warn (context, ret, "unparse_name failed");
 reply_priv (auth_context, s, sa, sa_size,
      KRB5_KPASSWD_HARDERROR, "out of memory error");
 goto out;
    }





    if (krb5_principal_compare(context, admin_principal, principal) == TRUE) {

 pwd_reason = kadm5_check_password_quality (context, principal,
         pwd_data);
 if (pwd_reason != ((void*)0) ) {
     krb5_warnx (context,
   "%s didn't pass password quality check with error: %s",
   client, pwd_reason);
     reply_priv (auth_context, s, sa, sa_size,
   KRB5_KPASSWD_SOFTERROR, pwd_reason);
     goto out;
 }
 krb5_warnx (context, "Changing password for %s", client);
    } else {
 ret = _kadm5_acl_check_permission(kadm5_handle, KADM5_PRIV_CPW,
       principal);
 if (ret) {
     krb5_warn (context, ret,
         "Check ACL failed for %s for changing %s password",
         admin, client);
     reply_priv (auth_context, s, sa, sa_size,
   KRB5_KPASSWD_HARDERROR, "permission denied");
     goto out;
 }
 krb5_warnx (context, "%s is changing password for %s", admin, client);
    }

    ret = krb5_data_realloc(pwd_data, pwd_data->length + 1);
    if (ret) {
 krb5_warn (context, ret, "malloc: out of memory");
 reply_priv (auth_context, s, sa, sa_size, KRB5_KPASSWD_HARDERROR,
      "Internal error");
 goto out;
    }
    tmp = pwd_data->data;
    tmp[pwd_data->length - 1] = '\0';

    ret = kadm5_s_chpass_principal_cond (kadm5_handle, principal, tmp);
    krb5_free_data (context, pwd_data);
    pwd_data = ((void*)0);
    if (ret) {
 const char *str = krb5_get_error_message(context, ret);
 krb5_warnx(context, "kadm5_s_chpass_principal_cond: %s", str);
 reply_priv (auth_context, s, sa, sa_size, KRB5_KPASSWD_SOFTERROR,
      str ? str : "Internal error");
 krb5_free_error_message(context, str);
 goto out;
    }
    reply_priv (auth_context, s, sa, sa_size, KRB5_KPASSWD_SUCCESS,
  "Password changed");
out:
    free_ChangePasswdDataMS(&chpw);
    if (principal != admin_principal)
 krb5_free_principal(context, principal);
    if (admin)
 free(admin);
    if (client)
 free(client);
    if (pwd_data)
 krb5_free_data(context, pwd_data);
    if (kadm5_handle)
 kadm5_destroy (kadm5_handle);
}
