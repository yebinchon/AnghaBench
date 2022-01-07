
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct krb5_plugin {int dummy; } ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
struct TYPE_3__ {scalar_t__ minor_version; int (* init ) (int ,int *) ;} ;


 scalar_t__ ENOENT ;
 scalar_t__ KRB5_WINDC_PLUGIN_MINOR ;
 int PLUGIN_TYPE_DATA ;
 scalar_t__ _krb5_plugin_find (int ,int ,char*,struct krb5_plugin**) ;
 int _krb5_plugin_free (struct krb5_plugin*) ;
 struct krb5_plugin* _krb5_plugin_get_next (struct krb5_plugin*) ;
 TYPE_1__* _krb5_plugin_get_symbol (struct krb5_plugin*) ;
 int krb5_set_error_message (int ,scalar_t__,char*) ;
 int stub1 (int ,int *) ;
 int windcctx ;
 TYPE_1__* windcft ;

krb5_error_code
krb5_kdc_windc_init(krb5_context context)
{
    struct krb5_plugin *list = ((void*)0), *e;
    krb5_error_code ret;

    ret = _krb5_plugin_find(context, PLUGIN_TYPE_DATA, "windc", &list);
    if(ret != 0 || list == ((void*)0))
 return 0;

    for (e = list; e != ((void*)0); e = _krb5_plugin_get_next(e)) {

 windcft = _krb5_plugin_get_symbol(e);
 if (windcft->minor_version < KRB5_WINDC_PLUGIN_MINOR)
     continue;

 (*windcft->init)(context, &windcctx);
 break;
    }
    _krb5_plugin_free(list);
    if (e == ((void*)0)) {
 krb5_set_error_message(context, ENOENT, "Did not find any WINDC plugin");
 windcft = ((void*)0);
 return ENOENT;
    }

    return 0;
}
