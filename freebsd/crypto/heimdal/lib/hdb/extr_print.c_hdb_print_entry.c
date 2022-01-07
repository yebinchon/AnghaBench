
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int krb5_storage ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
struct TYPE_3__ {int entry; } ;
typedef TYPE_1__ hdb_entry_ex ;
typedef int HDB ;
typedef int FILE ;


 scalar_t__ ENOMEM ;
 scalar_t__ entry2string_int (int ,int *,int *) ;
 int fflush (int *) ;
 int fileno (int *) ;
 int krb5_set_error_message (int ,scalar_t__,char*) ;
 int krb5_storage_free (int *) ;
 int * krb5_storage_from_fd (int ) ;
 int krb5_storage_write (int *,char*,int) ;

krb5_error_code
hdb_print_entry(krb5_context context, HDB *db, hdb_entry_ex *entry, void *data)
{
    krb5_error_code ret;
    krb5_storage *sp;

    FILE *f = data;

    fflush(f);
    sp = krb5_storage_from_fd(fileno(f));
    if(sp == ((void*)0)) {
 krb5_set_error_message(context, ENOMEM, "malloc: out of memory");
 return ENOMEM;
    }

    ret = entry2string_int(context, sp, &entry->entry);
    if(ret) {
 krb5_storage_free(sp);
 return ret;
    }

    krb5_storage_write(sp, "\n", 1);
    krb5_storage_free(sp);
    return 0;
}
