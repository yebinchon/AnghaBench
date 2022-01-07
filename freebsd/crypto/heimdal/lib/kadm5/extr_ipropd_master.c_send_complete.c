
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_14__ {int fd; int ac; int version; } ;
typedef TYPE_1__ slave ;
typedef int krb5_storage ;
typedef int krb5_error_code ;
struct TYPE_15__ {char* data; int length; } ;
typedef TYPE_2__ krb5_data ;
typedef int krb5_context ;
struct TYPE_16__ {int (* hdb_open ) (int ,TYPE_3__*,int ,int ) ;int (* hdb_destroy ) (int ,TYPE_3__*) ;int (* hdb_close ) (int ,TYPE_3__*) ;} ;
typedef TYPE_3__ HDB ;


 int HDB_F_ADMIN_DATA ;
 int NOW_YOU_HAVE ;
 int O_RDONLY ;
 int TELL_YOU_EVERYTHING ;
 int hdb_create (int ,TYPE_3__**,char const*) ;
 int hdb_foreach (int ,TYPE_3__*,int ,int ,TYPE_1__*) ;
 int krb5_err (int ,int,int,char*,...) ;
 int krb5_errx (int ,int,char*) ;
 int krb5_storage_free (int *) ;
 int * krb5_storage_from_mem (char*,int) ;
 int krb5_store_int32 (int *,int ) ;
 int krb5_warn (int ,int,char*) ;
 int krb5_write_priv_message (int ,int ,int *,TYPE_2__*) ;
 int prop_one ;
 int slave_dead (int ,TYPE_1__*) ;
 int slave_seen (TYPE_1__*) ;
 int stub1 (int ,TYPE_3__*,int ,int ) ;
 int stub2 (int ,TYPE_3__*) ;
 int stub3 (int ,TYPE_3__*) ;

__attribute__((used)) static int
send_complete (krb5_context context, slave *s,
        const char *database, uint32_t current_version)
{
    krb5_error_code ret;
    krb5_storage *sp;
    HDB *db;
    krb5_data data;
    char buf[8];

    ret = hdb_create (context, &db, database);
    if (ret)
 krb5_err (context, 1, ret, "hdb_create: %s", database);
    ret = db->hdb_open (context, db, O_RDONLY, 0);
    if (ret)
 krb5_err (context, 1, ret, "db->open");

    sp = krb5_storage_from_mem (buf, 4);
    if (sp == ((void*)0))
 krb5_errx (context, 1, "krb5_storage_from_mem");
    krb5_store_int32 (sp, TELL_YOU_EVERYTHING);
    krb5_storage_free (sp);

    data.data = buf;
    data.length = 4;

    ret = krb5_write_priv_message(context, s->ac, &s->fd, &data);

    if (ret) {
 krb5_warn (context, ret, "krb5_write_priv_message");
 slave_dead(context, s);
 return ret;
    }

    ret = hdb_foreach (context, db, HDB_F_ADMIN_DATA, prop_one, s);
    if (ret) {
 krb5_warn (context, ret, "hdb_foreach");
 slave_dead(context, s);
 return ret;
    }

    (*db->hdb_close)(context, db);
    (*db->hdb_destroy)(context, db);

    sp = krb5_storage_from_mem (buf, 8);
    if (sp == ((void*)0))
 krb5_errx (context, 1, "krb5_storage_from_mem");
    krb5_store_int32 (sp, NOW_YOU_HAVE);
    krb5_store_int32 (sp, current_version);
    krb5_storage_free (sp);

    data.length = 8;

    s->version = current_version;

    ret = krb5_write_priv_message(context, s->ac, &s->fd, &data);
    if (ret) {
 slave_dead(context, s);
 krb5_warn (context, ret, "krb5_write_priv_message");
 return ret;
    }

    slave_seen(s);

    return 0;
}
