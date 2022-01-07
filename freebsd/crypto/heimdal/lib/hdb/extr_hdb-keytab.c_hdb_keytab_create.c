
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int krb5_error_code ;
typedef int krb5_context ;
typedef TYPE_1__* hdb_keytab ;
struct TYPE_7__ {int hdb_destroy; int * hdb__del; int * hdb__put; int * hdb__get; int * hdb_rename; int hdb_unlock; int hdb_lock; int hdb_nextkey; int hdb_firstkey; int * hdb_remove; int hdb_store; int hdb_fetch_kvno; int hdb_close; int hdb_open; scalar_t__ hdb_openp; scalar_t__ hdb_master_key_set; struct TYPE_7__* hdb_db; int * path; } ;
typedef TYPE_1__ HDB ;


 int ENOMEM ;
 TYPE_1__* calloc (int,int) ;
 int free (TYPE_1__*) ;
 int hkt_close ;
 int hkt_destroy ;
 int hkt_fetch_kvno ;
 int hkt_firstkey ;
 int hkt_lock ;
 int hkt_nextkey ;
 int hkt_open ;
 int hkt_store ;
 int hkt_unlock ;
 int krb5_set_error_message (int ,int ,char*) ;
 int memset (TYPE_1__*,int ,int) ;
 int * strdup (char const*) ;

krb5_error_code
hdb_keytab_create(krb5_context context, HDB ** db, const char *arg)
{
    hdb_keytab k;

    *db = calloc(1, sizeof(**db));
    if (*db == ((void*)0)) {
 krb5_set_error_message(context, ENOMEM, "malloc: out of memory");
 return ENOMEM;
    }
    memset(*db, 0, sizeof(**db));

    k = calloc(1, sizeof(*k));
    if (k == ((void*)0)) {
 free(*db);
 *db = ((void*)0);
 krb5_set_error_message(context, ENOMEM, "malloc: out of memory");
 return ENOMEM;
    }

    k->path = strdup(arg);
    if (k->path == ((void*)0)) {
 free(k);
 free(*db);
 *db = ((void*)0);
 krb5_set_error_message(context, ENOMEM, "malloc: out of memory");
 return ENOMEM;
    }


    (*db)->hdb_db = k;

    (*db)->hdb_master_key_set = 0;
    (*db)->hdb_openp = 0;
    (*db)->hdb_open = hkt_open;
    (*db)->hdb_close = hkt_close;
    (*db)->hdb_fetch_kvno = hkt_fetch_kvno;
    (*db)->hdb_store = hkt_store;
    (*db)->hdb_remove = ((void*)0);
    (*db)->hdb_firstkey = hkt_firstkey;
    (*db)->hdb_nextkey = hkt_nextkey;
    (*db)->hdb_lock = hkt_lock;
    (*db)->hdb_unlock = hkt_unlock;
    (*db)->hdb_rename = ((void*)0);
    (*db)->hdb__get = ((void*)0);
    (*db)->hdb__put = ((void*)0);
    (*db)->hdb__del = ((void*)0);
    (*db)->hdb_destroy = hkt_destroy;

    return 0;
}
