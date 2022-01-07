
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct krb5_kdc_configuration {int num_db; TYPE_1__** db; } ;
struct hdb_dbinfo {int dummy; } ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
struct TYPE_3__ {int (* hdb_destroy ) (int ,TYPE_1__*) ;} ;


 scalar_t__ add_db (int ,struct krb5_kdc_configuration*,int ,int ) ;
 int free (TYPE_1__**) ;
 int hdb_dbinfo_get_acl_file (int ,struct hdb_dbinfo*) ;
 int hdb_dbinfo_get_dbname (int ,struct hdb_dbinfo*) ;
 int hdb_dbinfo_get_label (int ,struct hdb_dbinfo*) ;
 int hdb_dbinfo_get_mkey_file (int ,struct hdb_dbinfo*) ;
 struct hdb_dbinfo* hdb_dbinfo_get_next (struct hdb_dbinfo*,struct hdb_dbinfo*) ;
 int hdb_free_dbinfo (int ,struct hdb_dbinfo**) ;
 scalar_t__ hdb_get_dbinfo (int ,struct hdb_dbinfo**) ;
 int kdc_log (int ,struct krb5_kdc_configuration*,int ,char*,int ) ;
 int stub1 (int ,TYPE_1__*) ;

krb5_error_code
krb5_kdc_set_dbinfo(krb5_context context, struct krb5_kdc_configuration *c)
{
    struct hdb_dbinfo *info, *d;
    krb5_error_code ret;
    int i;


    ret = hdb_get_dbinfo(context, &info);
    if (ret)
 return ret;

    d = ((void*)0);
    while ((d = hdb_dbinfo_get_next(info, d)) != ((void*)0)) {

 ret = add_db(context, c,
       hdb_dbinfo_get_dbname(context, d),
       hdb_dbinfo_get_mkey_file(context, d));
 if (ret)
     goto out;

 kdc_log(context, c, 0, "label: %s",
  hdb_dbinfo_get_label(context, d));
 kdc_log(context, c, 0, "\tdbname: %s",
  hdb_dbinfo_get_dbname(context, d));
 kdc_log(context, c, 0, "\tmkey_file: %s",
  hdb_dbinfo_get_mkey_file(context, d));
 kdc_log(context, c, 0, "\tacl_file: %s",
  hdb_dbinfo_get_acl_file(context, d));
    }
    hdb_free_dbinfo(context, &info);

    return 0;
out:
    for (i = 0; i < c->num_db; i++)
 if (c->db[i] && c->db[i]->hdb_destroy)
     (*c->db[i]->hdb_destroy)(context, c->db[i]);
    c->num_db = 0;
    free(c->db);
    c->db = ((void*)0);

    hdb_free_dbinfo(context, &info);

    return ret;
}
