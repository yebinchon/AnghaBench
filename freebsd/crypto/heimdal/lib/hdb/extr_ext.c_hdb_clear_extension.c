
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int krb5_error_code ;
typedef int krb5_context ;
struct TYPE_9__ {TYPE_3__* extensions; } ;
typedef TYPE_2__ hdb_entry ;
struct TYPE_8__ {unsigned int element; } ;
struct TYPE_10__ {size_t len; struct TYPE_10__* val; TYPE_1__ data; } ;


 int free (TYPE_3__*) ;
 int free_HDB_extension (TYPE_3__*) ;
 int memmove (TYPE_3__*,TYPE_3__*,int) ;

krb5_error_code
hdb_clear_extension(krb5_context context,
      hdb_entry *entry,
      int type)
{
    size_t i;

    if (entry->extensions == ((void*)0))
 return 0;

    for (i = 0; i < entry->extensions->len; i++) {
 if (entry->extensions->val[i].data.element == (unsigned)type) {
     free_HDB_extension(&entry->extensions->val[i]);
     memmove(&entry->extensions->val[i],
      &entry->extensions->val[i + 1],
      sizeof(entry->extensions->val[i]) * (entry->extensions->len - i - 1));
     entry->extensions->len--;
 }
    }
    if (entry->extensions->len == 0) {
 free(entry->extensions->val);
 free(entry->extensions);
 entry->extensions = ((void*)0);
    }

    return 0;
}
