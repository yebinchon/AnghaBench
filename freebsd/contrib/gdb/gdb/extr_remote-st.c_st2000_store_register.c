
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect_prompt (int) ;
 int get_reg_name (int) ;
 int printf_stdebug (char*,int ,int ) ;
 int read_register (int) ;
 int st2000_store_registers () ;

__attribute__((used)) static void
st2000_store_register (int regno)
{
  if (regno == -1)
    st2000_store_registers ();
  else
    {
      printf_stdebug ("PR %s %x\r", get_reg_name (regno),
        read_register (regno));

      expect_prompt (1);
    }
}
