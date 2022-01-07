
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acl_entry_t ;


 int _acl_brand_as (int ,int) ;
 int entry2acl (int const) ;

void
_entry_brand_as(const acl_entry_t entry, int brand)
{

 _acl_brand_as(entry2acl(entry), brand);
}
