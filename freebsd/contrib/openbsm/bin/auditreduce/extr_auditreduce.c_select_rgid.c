
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ISOPTSET (int ,int ) ;
 int OPT_g ;
 int opttochk ;
 int p_rgid ;

__attribute__((used)) static int
select_rgid(int grp)
{


 if (ISOPTSET(opttochk, OPT_g)) {
  if (grp != p_rgid)
   return (0);
 }
 return (1);
}
