
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct krb5_plugin {int dummy; } ;
struct krb5_krbhst_data {int flags; int realm; } ;
struct TYPE_3__ {scalar_t__ minor_version; scalar_t__ (* lookup ) (void*,int,int ,int ,int ,int ,struct krb5_krbhst_data*) ;int (* fini ) (void*) ;int (* init ) (int ,void**) ;} ;
typedef TYPE_1__ krb5plugin_service_locate_ftable ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef enum locate_service_type { ____Placeholder_locate_service_type } locate_service_type ;


 int KD_CONFIG_EXISTS ;
 int KRB5_PLUGIN_LOCATE ;
 scalar_t__ KRB5_PLUGIN_NO_HANDLE ;
 int N_ (char*,char*) ;
 int PLUGIN_TYPE_DATA ;
 int _krb5_debug (int ,int,char*,int ) ;
 scalar_t__ _krb5_plugin_find (int ,int ,int ,struct krb5_plugin**) ;
 int _krb5_plugin_free (struct krb5_plugin*) ;
 struct krb5_plugin* _krb5_plugin_get_next (struct krb5_plugin*) ;
 TYPE_1__* _krb5_plugin_get_symbol (struct krb5_plugin*) ;
 int add_locate ;
 int krb5_set_error_message (int ,scalar_t__,int ,int ,scalar_t__) ;
 int stub1 (int ,void**) ;
 scalar_t__ stub2 (void*,int,int ,int ,int ,int ,struct krb5_krbhst_data*) ;
 int stub3 (void*) ;

__attribute__((used)) static void
plugin_get_hosts(krb5_context context,
   struct krb5_krbhst_data *kd,
   enum locate_service_type type)
{
    struct krb5_plugin *list = ((void*)0), *e;
    krb5_error_code ret;

    ret = _krb5_plugin_find(context, PLUGIN_TYPE_DATA,
       KRB5_PLUGIN_LOCATE, &list);
    if(ret != 0 || list == ((void*)0))
 return;

    for (e = list; e != ((void*)0); e = _krb5_plugin_get_next(e)) {
 krb5plugin_service_locate_ftable *service;
 void *ctx;

 service = _krb5_plugin_get_symbol(e);
 if (service->minor_version != 0)
     continue;

 (*service->init)(context, &ctx);
 ret = (*service->lookup)(ctx, type, kd->realm, 0, 0, add_locate, kd);
 (*service->fini)(ctx);
 if (ret && ret != KRB5_PLUGIN_NO_HANDLE) {
     krb5_set_error_message(context, ret,
       N_("Locate plugin failed to lookup realm %s: %d", ""),
       kd->realm, ret);
     break;
 } else if (ret == 0) {
     _krb5_debug(context, 2, "plugin found result for realm %s", kd->realm);
     kd->flags |= KD_CONFIG_EXISTS;
 }

    }
    _krb5_plugin_free(list);
}
