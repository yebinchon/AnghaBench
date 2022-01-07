
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_keytab ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;


 int HEIMDAL_MUTEX_lock (int *) ;
 int HEIMDAL_MUTEX_unlock (int *) ;
 int * _gsskrb5_keytab ;
 int gssapi_keytab_mutex ;
 scalar_t__ krb5_kt_default (int ,int *) ;
 scalar_t__ krb5_kt_get_full_name (int ,int *,char**) ;
 scalar_t__ krb5_kt_resolve (int ,char*,int *) ;
 int krb5_xfree (char*) ;

__attribute__((used)) static krb5_error_code
get_keytab(krb5_context context, krb5_keytab *keytab)
{
    krb5_error_code kret;

    HEIMDAL_MUTEX_lock(&gssapi_keytab_mutex);

    if (_gsskrb5_keytab != ((void*)0)) {
 char *name = ((void*)0);

 kret = krb5_kt_get_full_name(context, _gsskrb5_keytab, &name);
 if (kret == 0) {
     kret = krb5_kt_resolve(context, name, keytab);
     krb5_xfree(name);
 }
    } else
 kret = krb5_kt_default(context, keytab);

    HEIMDAL_MUTEX_unlock(&gssapi_keytab_mutex);

    return (kret);
}
