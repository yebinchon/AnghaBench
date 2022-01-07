
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ISOPTSET (int ,int ) ;
 int OPT_u ;
 int opttochk ;
 int p_auid ;

__attribute__((used)) static int
select_auid(int au)
{


 if (ISOPTSET(opttochk, OPT_u)) {
  if (au != p_auid)
   return (0);
 }
 return (1);
}
