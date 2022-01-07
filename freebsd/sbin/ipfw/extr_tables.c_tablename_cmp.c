
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tablename; } ;
typedef TYPE_1__ ipfw_xtable_info ;


 int stringnum_cmp (int ,int ) ;

__attribute__((used)) static int
tablename_cmp(const void *a, const void *b)
{
 ipfw_xtable_info *ia, *ib;

 ia = (ipfw_xtable_info *)a;
 ib = (ipfw_xtable_info *)b;

 return (stringnum_cmp(ia->tablename, ib->tablename));
}
