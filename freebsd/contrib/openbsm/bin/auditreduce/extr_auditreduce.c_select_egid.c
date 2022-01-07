
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ISOPTSET (int ,int ) ;
 int OPT_f ;
 int opttochk ;
 int p_egid ;

__attribute__((used)) static int
select_egid(int egrp)
{


 if (ISOPTSET(opttochk, OPT_f)) {
  if (egrp != p_egid)
   return (0);
 }
 return (1);
}
