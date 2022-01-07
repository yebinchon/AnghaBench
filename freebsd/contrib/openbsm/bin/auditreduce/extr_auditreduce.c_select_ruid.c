
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ISOPTSET (int ,int ) ;
 int OPT_r ;
 int opttochk ;
 int p_ruid ;

__attribute__((used)) static int
select_ruid(int user)
{


 if (ISOPTSET(opttochk, OPT_r)) {
  if (user != p_ruid)
   return (0);
 }
 return (1);
}
