
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acl_entry_t ;


 int _acl_brand (int ) ;
 int entry2acl (int const) ;

int
_entry_brand(const acl_entry_t entry)
{

 return (_acl_brand(entry2acl(entry)));
}
