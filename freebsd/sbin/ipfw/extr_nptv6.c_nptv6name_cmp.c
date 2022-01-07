
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ set; int name; } ;
typedef TYPE_1__ ipfw_nptv6_cfg ;


 int stringnum_cmp (int ,int ) ;

__attribute__((used)) static int
nptv6name_cmp(const void *a, const void *b)
{
 ipfw_nptv6_cfg *ca, *cb;

 ca = (ipfw_nptv6_cfg *)a;
 cb = (ipfw_nptv6_cfg *)b;

 if (ca->set > cb->set)
  return (1);
 else if (ca->set < cb->set)
  return (-1);
 return (stringnum_cmp(ca->name, cb->name));
}
