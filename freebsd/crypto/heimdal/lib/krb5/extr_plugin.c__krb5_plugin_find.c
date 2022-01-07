
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int type; void* symbol; int name; } ;
struct TYPE_4__ {int * dsohandle; } ;
struct TYPE_6__ {TYPE_2__ symbol; TYPE_1__ dso; } ;
struct plugin {int type; TYPE_3__ u; struct plugin* next; } ;
struct krb5_plugin {int dummy; } ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef enum krb5_plugin_type { ____Placeholder_krb5_plugin_type } krb5_plugin_type ;



 scalar_t__ ENOENT ;
 int HEIMDAL_MUTEX_lock (int *) ;
 int HEIMDAL_MUTEX_unlock (int *) ;

 int _krb5_plugin_free (struct krb5_plugin*) ;
 scalar_t__ add_symbol (int ,struct krb5_plugin**,void*) ;
 void* dlsym (int *,char const*) ;
 int krb5_set_error_message (int ,scalar_t__,char*,char const*) ;
 int load_plugins (int ) ;
 int plugin_mutex ;
 struct plugin* registered ;
 int strcmp (int ,char const*) ;

krb5_error_code
_krb5_plugin_find(krb5_context context,
    enum krb5_plugin_type type,
    const char *name,
    struct krb5_plugin **list)
{
    struct plugin *e;
    krb5_error_code ret;

    *list = ((void*)0);

    HEIMDAL_MUTEX_lock(&plugin_mutex);

    load_plugins(context);

    for (ret = 0, e = registered; e != ((void*)0); e = e->next) {
 switch(e->type) {
 case 129: {
     void *sym;
     if (e->u.dso.dsohandle == ((void*)0))
  continue;
     sym = dlsym(e->u.dso.dsohandle, name);
     if (sym)
  ret = add_symbol(context, list, sym);
     break;
 }
 case 128:
     if (strcmp(e->u.symbol.name, name) == 0 && e->u.symbol.type == type)
  ret = add_symbol(context, list, e->u.symbol.symbol);
     break;
 }
 if (ret) {
     _krb5_plugin_free(*list);
     *list = ((void*)0);
 }
    }

    HEIMDAL_MUTEX_unlock(&plugin_mutex);
    if (ret)
 return ret;

    if (*list == ((void*)0)) {
 krb5_set_error_message(context, ENOENT, "Did not find a plugin for %s", name);
 return ENOENT;
    }

    return 0;
}
