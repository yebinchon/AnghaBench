
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* acl_t ;
struct TYPE_4__ {int ats_brand; } ;


 int _acl_brand_may_be (TYPE_1__*,int) ;
 int assert (int ) ;

void
_acl_brand_as(acl_t acl, int brand)
{

 assert(_acl_brand_may_be(acl, brand));

 acl->ats_brand = brand;
}
