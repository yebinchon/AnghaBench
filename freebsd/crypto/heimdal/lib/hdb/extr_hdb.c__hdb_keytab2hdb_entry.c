
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int keyblock; int timestamp; int vno; } ;
typedef TYPE_4__ krb5_keytab_entry ;
typedef int krb5_error_code ;
typedef int krb5_context ;
struct TYPE_10__ {int len; TYPE_6__* val; } ;
struct TYPE_9__ {int time; } ;
struct TYPE_11__ {TYPE_2__ keys; TYPE_1__ created_by; int kvno; } ;
struct TYPE_13__ {TYPE_3__ entry; } ;
typedef TYPE_5__ hdb_entry_ex ;
struct TYPE_14__ {int key; int * salt; int * mkvno; } ;


 int ENOMEM ;
 TYPE_6__* calloc (int,int) ;
 int krb5_copy_keyblock_contents (int ,int *,int *) ;

krb5_error_code
_hdb_keytab2hdb_entry(krb5_context context,
        const krb5_keytab_entry *ktentry,
        hdb_entry_ex *entry)
{
    entry->entry.kvno = ktentry->vno;
    entry->entry.created_by.time = ktentry->timestamp;

    entry->entry.keys.val = calloc(1, sizeof(entry->entry.keys.val[0]));
    if (entry->entry.keys.val == ((void*)0))
 return ENOMEM;
    entry->entry.keys.len = 1;

    entry->entry.keys.val[0].mkvno = ((void*)0);
    entry->entry.keys.val[0].salt = ((void*)0);

    return krb5_copy_keyblock_contents(context,
           &ktentry->keyblock,
           &entry->entry.keys.val[0].key);
}
