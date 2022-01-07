
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M68K_A0_REGNUM ;
 int M68K_D0_REGNUM ;
 int PC_REGNUM ;
 int PS_REGNUM ;
 int monitor_supply_register (int,char*) ;

__attribute__((used)) static void
est_supply_register (char *regname, int regnamelen, char *val, int vallen)
{
  int regno;

  if (regnamelen != 2)
    return;

  switch (regname[0])
    {
    case 'S':
      if (regname[1] != 'R')
 return;
      regno = PS_REGNUM;
      break;
    case 'P':
      if (regname[1] != 'C')
 return;
      regno = PC_REGNUM;
      break;
    case 'D':
      if (regname[1] < '0' || regname[1] > '7')
 return;
      regno = regname[1] - '0' + M68K_D0_REGNUM;
      break;
    case 'A':
      if (regname[1] < '0' || regname[1] > '7')
 return;
      regno = regname[1] - '0' + M68K_A0_REGNUM;
      break;
    default:
      return;
    }

  monitor_supply_register (regno, val);
}
