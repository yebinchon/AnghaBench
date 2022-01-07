
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct timeval {int tv_usec; int tv_sec; } ;
typedef int krb5_error_code ;
typedef int krb5_data ;
typedef int krb5_context ;
struct TYPE_18__ {int principal; TYPE_4__* generation; } ;
struct TYPE_15__ {TYPE_6__ entry; } ;
typedef TYPE_1__ hdb_entry_ex ;
struct TYPE_17__ {scalar_t__ gen; int usec; int time; } ;
struct TYPE_16__ {int (* hdb__put ) (int ,TYPE_2__*,unsigned int,int ,int ) ;} ;
typedef TYPE_2__ HDB ;


 int ENOMEM ;
 unsigned int HDB_F_REPLACE ;
 int gettimeofday (struct timeval*,int *) ;
 int hdb_add_aliases (int ,TYPE_2__*,unsigned int,TYPE_1__*) ;
 int hdb_check_aliases (int ,TYPE_2__*,TYPE_1__*) ;
 int hdb_entry2value (int ,TYPE_6__*,int *) ;
 int hdb_principal2key (int ,int ,int *) ;
 int hdb_remove_aliases (int ,TYPE_2__*,int *) ;
 int hdb_seal_keys (int ,TYPE_2__*,TYPE_6__*) ;
 int krb5_data_free (int *) ;
 int krb5_set_error_message (int ,int,char*) ;
 TYPE_4__* malloc (int) ;
 int stub1 (int ,TYPE_2__*,unsigned int,int ,int ) ;

krb5_error_code
_hdb_store(krb5_context context, HDB *db, unsigned flags, hdb_entry_ex *entry)
{
    krb5_data key, value;
    int code;


    code = hdb_check_aliases(context, db, entry);
    if (code)
 return code;

    if(entry->entry.generation == ((void*)0)) {
 struct timeval t;
 entry->entry.generation = malloc(sizeof(*entry->entry.generation));
 if(entry->entry.generation == ((void*)0)) {
     krb5_set_error_message(context, ENOMEM, "malloc: out of memory");
     return ENOMEM;
 }
 gettimeofday(&t, ((void*)0));
 entry->entry.generation->time = t.tv_sec;
 entry->entry.generation->usec = t.tv_usec;
 entry->entry.generation->gen = 0;
    } else
 entry->entry.generation->gen++;

    code = hdb_seal_keys(context, db, &entry->entry);
    if (code)
 return code;

    hdb_principal2key(context, entry->entry.principal, &key);


    code = hdb_remove_aliases(context, db, &key);
    if (code) {
 krb5_data_free(&key);
 return code;
    }
    hdb_entry2value(context, &entry->entry, &value);
    code = db->hdb__put(context, db, flags & HDB_F_REPLACE, key, value);
    krb5_data_free(&value);
    krb5_data_free(&key);
    if (code)
 return code;

    code = hdb_add_aliases(context, db, flags, entry);

    return code;
}
