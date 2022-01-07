
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PC_REGNUM ;
 int st2000_fetch_register (int) ;

__attribute__((used)) static void
st2000_fetch_registers (void)
{
  int regno;




  for (regno = 0; regno <= PC_REGNUM; regno++)
    st2000_fetch_register (regno);
}
