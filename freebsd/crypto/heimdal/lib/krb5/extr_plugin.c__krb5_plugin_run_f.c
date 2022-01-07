
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iter_ctx {char const* name; int min_version; int ret; int * n; int * result; void* userctx; int (* func ) (int ,void const*,void*,void*) ;int context; } ;
typedef int krb5_error_code ;
typedef int krb5_context ;
typedef int * heim_string_t ;
typedef int * heim_dict_t ;


 int HEIMDAL_MUTEX_lock (int *) ;
 int HEIMDAL_MUTEX_unlock (int *) ;
 int KRB5_PLUGIN_NO_HANDLE ;
 int eval_results ;
 int * heim_array_create () ;
 int heim_array_iterate_f (int *,int ,struct iter_ctx*) ;
 int * heim_dict_copy_value (int ,int *) ;
 int heim_dict_iterate_f (int *,int ,struct iter_ctx*) ;
 int heim_release (int *) ;
 void* heim_string_create (char const*) ;
 int modules ;
 int plugin_mutex ;
 int search_modules ;

krb5_error_code
_krb5_plugin_run_f(krb5_context context,
     const char *module,
     const char *name,
     int min_version,
     int flags,
     void *userctx,
     krb5_error_code (*func)(krb5_context, const void *, void *, void *))
{
    heim_string_t m = heim_string_create(module);
    heim_dict_t dict;
    struct iter_ctx s;

    HEIMDAL_MUTEX_lock(&plugin_mutex);

    dict = heim_dict_copy_value(modules, m);
    heim_release(m);
    if (dict == ((void*)0)) {
 HEIMDAL_MUTEX_unlock(&plugin_mutex);
 return KRB5_PLUGIN_NO_HANDLE;
    }

    s.context = context;
    s.name = name;
    s.n = heim_string_create(name);
    s.min_version = min_version;
    s.result = heim_array_create();
    s.func = func;
    s.userctx = userctx;

    heim_dict_iterate_f(dict, search_modules, &s);

    heim_release(dict);

    HEIMDAL_MUTEX_unlock(&plugin_mutex);

    s.ret = KRB5_PLUGIN_NO_HANDLE;

    heim_array_iterate_f(s.result, eval_results, &s);

    heim_release(s.result);
    heim_release(s.n);

    return s.ret;
}
