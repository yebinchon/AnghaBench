
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdb_dbinfo {struct hdb_dbinfo* log_file; struct hdb_dbinfo* acl_file; struct hdb_dbinfo* mkey_file; struct hdb_dbinfo* dbname; struct hdb_dbinfo* realm; struct hdb_dbinfo* label; struct hdb_dbinfo* next; } ;
typedef int krb5_context ;


 int free (struct hdb_dbinfo*) ;

void
hdb_free_dbinfo(krb5_context context, struct hdb_dbinfo **dbp)
{
    struct hdb_dbinfo *di, *ndi;

    for(di = *dbp; di != ((void*)0); di = ndi) {
 ndi = di->next;
 free (di->label);
 free (di->realm);
 free (di->dbname);
 free (di->mkey_file);
 free (di->acl_file);
 free (di->log_file);
 free(di);
    }
    *dbp = ((void*)0);
}
