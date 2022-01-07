
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_context ;
typedef int hdb_entry ;


 int choice_HDB_extension_data_password ;
 int hdb_clear_extension (int ,int *,int ) ;

int
hdb_entry_clear_password(krb5_context context, hdb_entry *entry)
{
    return hdb_clear_extension(context, entry,
          choice_HDB_extension_data_password);
}
