
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uuid_table {int dummy; } ;


 struct uuid_table* guid_tbl ;
 int nitems (struct uuid_table*) ;

int
efi_known_guid(struct uuid_table **tbl)
{

 *tbl = guid_tbl;
 return (nitems(guid_tbl));
}
