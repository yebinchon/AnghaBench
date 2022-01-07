
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int krb5_storage ;
typedef scalar_t__ krb5_error_code ;
struct TYPE_3__ {char* data; } ;
typedef TYPE_1__ krb5_data ;
typedef int krb5_context ;
typedef int hdb_entry ;


 scalar_t__ ENOMEM ;
 scalar_t__ entry2string_int (int ,int *,int *) ;
 int krb5_set_error_message (int ,scalar_t__,char*) ;
 int * krb5_storage_emem () ;
 int krb5_storage_free (int *) ;
 int krb5_storage_to_data (int *,TYPE_1__*) ;
 int krb5_storage_write (int *,char*,int) ;

krb5_error_code
hdb_entry2string (krb5_context context, hdb_entry *ent, char **str)
{
    krb5_error_code ret;
    krb5_data data;
    krb5_storage *sp;

    sp = krb5_storage_emem();
    if(sp == ((void*)0)) {
 krb5_set_error_message(context, ENOMEM, "malloc: out of memory");
 return ENOMEM;
    }

    ret = entry2string_int(context, sp, ent);
    if(ret) {
 krb5_storage_free(sp);
 return ret;
    }

    krb5_storage_write(sp, "\0", 1);
    krb5_storage_to_data(sp, &data);
    krb5_storage_free(sp);
    *str = data.data;
    return 0;
}
