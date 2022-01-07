
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
struct TYPE_7__ {int * hdb__del; int * hdb__put; int * hdb__get; int hdb_rename; int hdb_destroy; int hdb_remove; int hdb_store; int hdb_fetch_kvno; int hdb_nextkey; int hdb_firstkey; int hdb_unlock; int hdb_lock; int hdb_close; int hdb_open; scalar_t__ hdb_capability_flags; scalar_t__ hdb_openp; scalar_t__ hdb_master_key_set; struct TYPE_7__* hdb_db; } ;
typedef TYPE_1__ hdb_sqlite_db ;
typedef TYPE_1__ HDB ;


 TYPE_1__* calloc (int,int) ;
 int free (TYPE_1__*) ;
 int hdb_sqlite_close ;
 int hdb_sqlite_destroy ;
 int hdb_sqlite_fetch_kvno ;
 int hdb_sqlite_firstkey ;
 int hdb_sqlite_lock ;
 scalar_t__ hdb_sqlite_make_database (int ,TYPE_1__*,char const*) ;
 int hdb_sqlite_nextkey ;
 int hdb_sqlite_open ;
 int hdb_sqlite_remove ;
 int hdb_sqlite_rename ;
 int hdb_sqlite_store ;
 int hdb_sqlite_unlock ;
 scalar_t__ krb5_enomem (int ) ;

krb5_error_code
hdb_sqlite_create(krb5_context context, HDB **db, const char *argument)
{
    krb5_error_code ret;
    hdb_sqlite_db *hsdb;

    *db = calloc(1, sizeof (**db));
    if (*db == ((void*)0))
 return krb5_enomem(context);

    hsdb = (hdb_sqlite_db*) calloc(1, sizeof (*hsdb));
    if (hsdb == ((void*)0)) {
        free(*db);
        *db = ((void*)0);
 return krb5_enomem(context);
    }

    (*db)->hdb_db = hsdb;


    ret = hdb_sqlite_make_database(context, *db, argument);
    if (ret) {
        free((*db)->hdb_db);
        free(*db);

        return ret;
    }

    (*db)->hdb_master_key_set = 0;
    (*db)->hdb_openp = 0;
    (*db)->hdb_capability_flags = 0;

    (*db)->hdb_open = hdb_sqlite_open;
    (*db)->hdb_close = hdb_sqlite_close;

    (*db)->hdb_lock = hdb_sqlite_lock;
    (*db)->hdb_unlock = hdb_sqlite_unlock;
    (*db)->hdb_firstkey = hdb_sqlite_firstkey;
    (*db)->hdb_nextkey = hdb_sqlite_nextkey;
    (*db)->hdb_fetch_kvno = hdb_sqlite_fetch_kvno;
    (*db)->hdb_store = hdb_sqlite_store;
    (*db)->hdb_remove = hdb_sqlite_remove;
    (*db)->hdb_destroy = hdb_sqlite_destroy;
    (*db)->hdb_rename = hdb_sqlite_rename;
    (*db)->hdb__get = ((void*)0);
    (*db)->hdb__put = ((void*)0);
    (*db)->hdb__del = ((void*)0);

    return 0;
}
