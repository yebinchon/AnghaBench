
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acl_entry_t ;


 int _acl_brand_may_be (int ,int) ;
 int entry2acl (int const) ;

int
_entry_brand_may_be(const acl_entry_t entry, int brand)
{

 return (_acl_brand_may_be(entry2acl(entry), brand));
}
