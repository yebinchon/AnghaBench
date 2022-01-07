
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ISOPTSET (int ,int ) ;
 int OPT_e ;
 int opttochk ;
 int p_euid ;

__attribute__((used)) static int
select_euid(int euser)
{


 if (ISOPTSET(opttochk, OPT_e)) {
  if (euser != p_euid)
   return (0);
 }
 return (1);
}
