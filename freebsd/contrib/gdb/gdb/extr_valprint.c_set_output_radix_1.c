
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*,unsigned int) ;
 char output_format ;
 unsigned int output_radix ;
 int printf_filtered (char*,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static void
set_output_radix_1 (int from_tty, unsigned radix)
{


  switch (radix)
    {
    case 16:
      output_format = 'x';
      break;
    case 10:
      output_format = 0;
      break;
    case 8:
      output_format = 'o';
      break;
    default:


      error ("Unsupported output radix ``decimal %u''; output radix unchanged.",
      radix);
    }
  output_radix = radix;
  if (from_tty)
    {
      printf_filtered ("Output radix now set to decimal %u, hex %x, octal %o.\n",
         radix, radix, radix);
    }
}
