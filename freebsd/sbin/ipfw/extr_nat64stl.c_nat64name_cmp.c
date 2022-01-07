
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ set; int name; } ;
typedef TYPE_1__ ipfw_nat64stl_cfg ;


 int stringnum_cmp (int ,int ) ;

__attribute__((used)) static int
nat64name_cmp(const void *a, const void *b)
{
 ipfw_nat64stl_cfg *ca, *cb;

 ca = (ipfw_nat64stl_cfg *)a;
 cb = (ipfw_nat64stl_cfg *)b;

 if (ca->set > cb->set)
  return (1);
 else if (ca->set < cb->set)
  return (-1);
 return (stringnum_cmp(ca->name, cb->name));
}
