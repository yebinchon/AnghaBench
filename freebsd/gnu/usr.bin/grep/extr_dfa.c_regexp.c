
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ OR ;
 scalar_t__ ORTOP ;
 int addtok (scalar_t__) ;
 int branch () ;
 scalar_t__ lex () ;
 scalar_t__ tok ;

__attribute__((used)) static void
regexp (int toplevel)
{
  branch();
  while (tok == OR)
    {
      tok = lex();
      branch();
      if (toplevel)
 addtok(ORTOP);
      else
 addtok(OR);
    }
}
