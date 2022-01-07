
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct slave {int fd; int ac; } ;
typedef int krb5_storage ;
typedef int krb5_error_code ;
struct TYPE_9__ {scalar_t__ length; scalar_t__ data; } ;
typedef TYPE_1__ krb5_data ;
typedef int krb5_context ;
struct TYPE_10__ {int entry; } ;
typedef TYPE_2__ hdb_entry_ex ;
typedef int HDB ;


 int ENOMEM ;
 int ONE_PRINC ;
 int hdb_entry2value (int ,int *,TYPE_1__*) ;
 int krb5_data_free (TYPE_1__*) ;
 int krb5_data_realloc (TYPE_1__*,scalar_t__) ;
 int krb5_storage_free (int *) ;
 int * krb5_storage_from_data (TYPE_1__*) ;
 int krb5_store_int32 (int *,int ) ;
 int krb5_write_priv_message (int ,int ,int *,TYPE_1__*) ;
 int memmove (char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int
prop_one (krb5_context context, HDB *db, hdb_entry_ex *entry, void *v)
{
    krb5_error_code ret;
    krb5_storage *sp;
    krb5_data data;
    struct slave *s = (struct slave *)v;

    ret = hdb_entry2value (context, &entry->entry, &data);
    if (ret)
 return ret;
    ret = krb5_data_realloc (&data, data.length + 4);
    if (ret) {
 krb5_data_free (&data);
 return ret;
    }
    memmove ((char *)data.data + 4, data.data, data.length - 4);
    sp = krb5_storage_from_data(&data);
    if (sp == ((void*)0)) {
 krb5_data_free (&data);
 return ENOMEM;
    }
    krb5_store_int32(sp, ONE_PRINC);
    krb5_storage_free(sp);

    ret = krb5_write_priv_message (context, s->ac, &s->fd, &data);
    krb5_data_free (&data);
    return ret;
}
