
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect (char*,int) ;
 int expect_prompt (int) ;
 int get_hex_regs (int,int) ;
 char* get_reg_name (int) ;
 int printf_stdebug (char*,char*) ;
 int st2000_fetch_registers () ;

__attribute__((used)) static void
st2000_fetch_register (int regno)
{
  if (regno == -1)
    st2000_fetch_registers ();
  else
    {
      char *name = get_reg_name (regno);
      printf_stdebug ("DR %s\r", name);
      expect (name, 1);
      expect (" : ", 1);
      get_hex_regs (1, regno);
      expect_prompt (1);
    }
  return;
}
