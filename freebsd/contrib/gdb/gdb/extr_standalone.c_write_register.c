
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REGISTER_TYPE ;


 int NUM_REGS ;
 int error (char*,int) ;
 int * saved_regs ;

void
write_register (int regno, REGISTER_TYPE value)
{
  if (regno < 0 || regno >= NUM_REGS)
    error ("Register number %d out of range.", regno);
  saved_regs[regno] = value;
}
