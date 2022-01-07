
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ krb5_error_code ;
typedef int * krb5_context ;


 int HEIMDAL_MUTEX_lock (int *) ;
 int HEIMDAL_MUTEX_unlock (int *) ;
 int * HEIMDAL_getspecific (int ) ;
 int HEIMDAL_key_create (int *,int ,scalar_t__) ;
 int HEIMDAL_setspecific (int ,int *,scalar_t__) ;
 int context_key ;
 int context_mutex ;
 int created_key ;
 int destroy_context ;
 int krb5_free_context (int *) ;
 scalar_t__ krb5_init_context (int **) ;

krb5_error_code
_gsskrb5_init (krb5_context *context)
{
    krb5_error_code ret = 0;

    HEIMDAL_MUTEX_lock(&context_mutex);

    if (!created_key) {
 HEIMDAL_key_create(&context_key, destroy_context, ret);
 if (ret) {
     HEIMDAL_MUTEX_unlock(&context_mutex);
     return ret;
 }
 created_key = 1;
    }
    HEIMDAL_MUTEX_unlock(&context_mutex);

    *context = HEIMDAL_getspecific(context_key);
    if (*context == ((void*)0)) {

 ret = krb5_init_context(context);
 if (ret == 0) {
     HEIMDAL_setspecific(context_key, *context, ret);
     if (ret) {
  krb5_free_context(*context);
  *context = ((void*)0);
     }
 }
    }

    return ret;
}
