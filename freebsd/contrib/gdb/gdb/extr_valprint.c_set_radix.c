
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int parse_and_eval_long (char*) ;
 int printf_filtered (char*,unsigned int,unsigned int,unsigned int) ;
 int set_input_radix_1 (int ,unsigned int) ;
 int set_output_radix_1 (int ,unsigned int) ;

__attribute__((used)) static void
set_radix (char *arg, int from_tty)
{
  unsigned radix;

  radix = (arg == ((void*)0)) ? 10 : parse_and_eval_long (arg);
  set_output_radix_1 (0, radix);
  set_input_radix_1 (0, radix);
  if (from_tty)
    {
      printf_filtered ("Input and output radices now set to decimal %u, hex %x, octal %o.\n",
         radix, radix, radix);
    }
}
