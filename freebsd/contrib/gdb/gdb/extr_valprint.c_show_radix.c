
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ input_radix ;
 scalar_t__ output_radix ;
 int printf_filtered (char*,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
show_radix (char *arg, int from_tty)
{
  if (from_tty)
    {
      if (input_radix == output_radix)
 {
   printf_filtered ("Input and output radices set to decimal %u, hex %x, octal %o.\n",
      input_radix, input_radix, input_radix);
 }
      else
 {
   printf_filtered ("Input radix set to decimal %u, hex %x, octal %o.\n",
      input_radix, input_radix, input_radix);
   printf_filtered ("Output radix set to decimal %u, hex %x, octal %o.\n",
      output_radix, output_radix, output_radix);
 }
    }
}
