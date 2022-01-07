
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*,unsigned int) ;
 unsigned int input_radix ;
 int printf_filtered (char*,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static void
set_input_radix_1 (int from_tty, unsigned radix)
{







  if (radix < 2)
    {


      error ("Nonsense input radix ``decimal %u''; input radix unchanged.",
      radix);
    }
  input_radix = radix;
  if (from_tty)
    {
      printf_filtered ("Input radix now set to decimal %u, hex %x, octal %o.\n",
         radix, radix, radix);
    }
}
