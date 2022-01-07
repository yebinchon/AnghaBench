
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct krb5_kafs_data {int * context; int * id; int realm; } ;
struct kafs_data {char* name; struct krb5_kafs_data* data; int free_error; int get_error; int get_realm; int get_cred; scalar_t__ (* afslog_uid ) (struct kafs_data*,char const*,int ,int ,char const*) ;} ;
typedef scalar_t__ krb5_error_code ;
typedef int * krb5_context ;
typedef int krb5_const_realm ;
typedef int * krb5_ccache ;


 scalar_t__ afslog_uid_int (struct kafs_data*,char const*,int ,int ,char const*) ;
 int free_error ;
 int get_cred ;
 int get_error ;
 int get_realm ;
 int krb5_cc_close (int *,int *) ;
 scalar_t__ krb5_cc_default (int *,int **) ;
 int krb5_free_context (int *) ;
 scalar_t__ krb5_init_context (int **) ;

krb5_error_code
krb5_afslog_uid_home(krb5_context context,
       krb5_ccache id,
       const char *cell,
       krb5_const_realm realm,
       uid_t uid,
       const char *homedir)
{
    struct kafs_data kd;
    struct krb5_kafs_data d;
    krb5_error_code ret;

    kd.name = "krb5";
    kd.afslog_uid = afslog_uid_int;
    kd.get_cred = get_cred;
    kd.get_realm = get_realm;
    kd.get_error = get_error;
    kd.free_error = free_error;
    kd.data = &d;
    if (context == ((void*)0)) {
 ret = krb5_init_context(&d.context);
 if (ret)
     return ret;
    } else
 d.context = context;
    if (id == ((void*)0)) {
 ret = krb5_cc_default(d.context, &d.id);
 if (ret)
     goto out;
    } else
 d.id = id;
    d.realm = realm;
    ret = afslog_uid_int(&kd, cell, 0, uid, homedir);
    if (id == ((void*)0))
 krb5_cc_close(context, d.id);
 out:
    if (context == ((void*)0))
 krb5_free_context(d.context);
    return ret;
}
