
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CCR_REGNUM ;
 int PC_REGNUM ;
 char* monitor_supply_register (int,char*) ;

__attribute__((used)) static void
hms_supply_register (char *regname, int regnamelen, char *val, int vallen)
{
  int regno;

  if (regnamelen != 2)
    return;
  if (regname[0] != 'P')
    return;


  val = monitor_supply_register (PC_REGNUM, val);

  while (*val != '=' && *val)
    val++;

  val = monitor_supply_register (CCR_REGNUM, val + 1);


  while (*val != '=' && *val)
    val++;

  for (regno = 0; regno < 7; regno++)
    {
      val = monitor_supply_register (regno, val + 1);
    }
}
