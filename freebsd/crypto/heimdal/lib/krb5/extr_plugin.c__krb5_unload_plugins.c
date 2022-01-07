
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_context ;


 int HEIMDAL_MUTEX_lock (int *) ;
 int HEIMDAL_MUTEX_unlock (int *) ;
 int heim_release (int *) ;
 int * modules ;
 int plugin_mutex ;

void
_krb5_unload_plugins(krb5_context context, const char *name)
{
    HEIMDAL_MUTEX_lock(&plugin_mutex);
    heim_release(modules);
    modules = ((void*)0);
    HEIMDAL_MUTEX_unlock(&plugin_mutex);
}
