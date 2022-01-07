
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct krb5_plugin {int dummy; } ;
struct hdb_method {scalar_t__ interface_version; scalar_t__ (* create ) (int ,int **,char const*) ;int prefix; } ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef int HDB ;


 char* HDB_DEFAULT_DB ;
 scalar_t__ HDB_INTERFACE_VERSION ;
 int PLUGIN_TYPE_DATA ;
 scalar_t__ _krb5_plugin_find (int ,int ,char*,struct krb5_plugin**) ;
 int _krb5_plugin_free (struct krb5_plugin*) ;
 struct krb5_plugin* _krb5_plugin_get_next (struct krb5_plugin*) ;
 struct hdb_method* _krb5_plugin_get_symbol (struct krb5_plugin*) ;
 struct hdb_method* find_dynamic_method (int ,char const*,char const**) ;
 struct hdb_method* find_method (char const*,char const**) ;
 int initialize_hdb_error_table_r ;
 int krb5_add_et_list (int ,int ) ;
 int krb5_errx (int ,int,char*,char const*) ;
 int strlen (int ) ;
 scalar_t__ strncmp (char const*,int ,int) ;
 scalar_t__ stub1 (int ,int **,char const*) ;

krb5_error_code
hdb_create(krb5_context context, HDB **db, const char *filename)
{
    const struct hdb_method *h;
    const char *residual;
    krb5_error_code ret;
    struct krb5_plugin *list = ((void*)0), *e;

    if(filename == ((void*)0))
 filename = HDB_DEFAULT_DB;
    krb5_add_et_list(context, initialize_hdb_error_table_r);
    h = find_method (filename, &residual);

    if (h == ((void*)0)) {
     ret = _krb5_plugin_find(context, PLUGIN_TYPE_DATA, "hdb", &list);
     if(ret == 0 && list != ((void*)0)) {
      for (e = list; e != ((void*)0); e = _krb5_plugin_get_next(e)) {
       h = _krb5_plugin_get_symbol(e);
       if (strncmp (filename, h->prefix, strlen(h->prefix)) == 0
    && h->interface_version == HDB_INTERFACE_VERSION) {
        residual = filename + strlen(h->prefix);
        break;
       }
      }
      if (e == ((void*)0)) {
       h = ((void*)0);
       _krb5_plugin_free(list);
      }
     }
    }





    if (h == ((void*)0))
 krb5_errx(context, 1, "No database support for %s", filename);
    return (*h->create)(context, db, residual);
}
