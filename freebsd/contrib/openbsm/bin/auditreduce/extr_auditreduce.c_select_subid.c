
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ISOPTSET (int ,int ) ;
 int OPT_j ;
 int opttochk ;
 int p_subid ;

__attribute__((used)) static int
select_subid(int subid)
{


 if (ISOPTSET(opttochk, OPT_j)) {
  if (subid != p_subid)
   return (0);
 }
 return (1);
}
