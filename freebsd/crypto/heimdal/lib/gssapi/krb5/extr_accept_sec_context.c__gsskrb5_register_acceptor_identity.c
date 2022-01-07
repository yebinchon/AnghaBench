
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ GSS_S_COMPLETE ;
 scalar_t__ GSS_S_FAILURE ;
 int HEIMDAL_MUTEX_lock (int *) ;
 int HEIMDAL_MUTEX_unlock (int *) ;
 scalar_t__ _gsskrb5_init (int *) ;
 int * _gsskrb5_keytab ;
 scalar_t__ asprintf (char**,char*,char const*) ;
 int free (char*) ;
 int gssapi_keytab_mutex ;
 int krb5_kt_close (int ,int *) ;
 scalar_t__ krb5_kt_default (int ,int **) ;
 scalar_t__ validate_keytab (int ,char const*,int **) ;

OM_uint32
_gsskrb5_register_acceptor_identity(OM_uint32 *min_stat, const char *identity)
{
    krb5_context context;
    krb5_error_code ret;

    *min_stat = 0;

    ret = _gsskrb5_init(&context);
    if(ret)
 return GSS_S_FAILURE;

    HEIMDAL_MUTEX_lock(&gssapi_keytab_mutex);

    if(_gsskrb5_keytab != ((void*)0)) {
 krb5_kt_close(context, _gsskrb5_keytab);
 _gsskrb5_keytab = ((void*)0);
    }
    if (identity == ((void*)0)) {
 ret = krb5_kt_default(context, &_gsskrb5_keytab);
    } else {



 ret = validate_keytab(context, identity, &_gsskrb5_keytab);



 if (ret) {
     char *p = ((void*)0);
     ret = asprintf(&p, "FILE:%s", identity);
     if(ret < 0 || p == ((void*)0)) {
  HEIMDAL_MUTEX_unlock(&gssapi_keytab_mutex);
  return GSS_S_FAILURE;
     }
     ret = validate_keytab(context, p, &_gsskrb5_keytab);
     free(p);
 }
    }
    HEIMDAL_MUTEX_unlock(&gssapi_keytab_mutex);
    if(ret) {
 *min_stat = ret;
 return GSS_S_FAILURE;
    }
    return GSS_S_COMPLETE;
}
