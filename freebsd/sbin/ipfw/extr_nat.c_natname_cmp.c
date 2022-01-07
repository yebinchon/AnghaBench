
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nat44_cfg_nat {int name; } ;


 int stringnum_cmp (int ,int ) ;

__attribute__((used)) static int
natname_cmp(const void *a, const void *b)
{
 struct nat44_cfg_nat *ia, *ib;

 ia = (struct nat44_cfg_nat *)a;
 ib = (struct nat44_cfg_nat *)b;

 return (stringnum_cmp(ia->name, ib->name));
}
