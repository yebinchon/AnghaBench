
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct krb5_kafs_data {int context; int realm; int id; } ;
struct kafs_token {int * ticket; int ticket_len; int ct; } ;
struct kafs_data {struct krb5_kafs_data* data; } ;
typedef int krb5_principal ;
typedef scalar_t__ krb5_error_code ;


 scalar_t__ _kafs_afslog_all_local_cells (struct kafs_data*,int ,char const*) ;
 scalar_t__ _kafs_get_cred (struct kafs_data*,char const*,int ,char const*,int ,struct kafs_token*) ;
 int free (int *) ;
 scalar_t__ kafs_settoken_rxkad (char const*,int *,int *,int ) ;
 scalar_t__ krb5_cc_get_principal (int ,int ,int *) ;
 int krb5_free_principal (int ,int ) ;
 char* krb5_principal_get_realm (int ,int ) ;

__attribute__((used)) static krb5_error_code
afslog_uid_int(struct kafs_data *data, const char *cell, const char *rh,
        uid_t uid, const char *homedir)
{
    krb5_error_code ret;
    struct kafs_token kt;
    krb5_principal princ;
    const char *trealm;
    struct krb5_kafs_data *d = data->data;

    if (cell == 0 || cell[0] == 0)
 return _kafs_afslog_all_local_cells (data, uid, homedir);

    ret = krb5_cc_get_principal (d->context, d->id, &princ);
    if (ret)
 return ret;

    trealm = krb5_principal_get_realm (d->context, princ);

    kt.ticket = ((void*)0);
    ret = _kafs_get_cred(data, cell, d->realm, trealm, uid, &kt);
    krb5_free_principal (d->context, princ);

    if(ret == 0) {
 ret = kafs_settoken_rxkad(cell, &kt.ct, kt.ticket, kt.ticket_len);
 free(kt.ticket);
    }
    return ret;
}
