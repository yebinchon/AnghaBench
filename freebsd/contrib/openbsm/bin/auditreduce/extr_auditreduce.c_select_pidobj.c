
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ ISOPTSET (int ,int ) ;
 int OPT_op ;
 int opttochk ;
 int p_pidobj ;
 scalar_t__ strtol (int ,char**,int) ;

__attribute__((used)) static int
select_pidobj(uint32_t pid)
{

 if (ISOPTSET(opttochk, OPT_op)) {
  if (pid != (uint32_t)strtol(p_pidobj, (char **)((void*)0), 10))
   return (0);
 }
 return (1);
}
