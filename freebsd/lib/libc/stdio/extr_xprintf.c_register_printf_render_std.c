
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __printf_arginfo_errno ;
 int __printf_arginfo_hexdump ;
 int __printf_arginfo_quote ;
 int __printf_arginfo_time ;
 int __printf_arginfo_vis ;
 int __printf_render_errno ;
 int __printf_render_hexdump ;
 int __printf_render_quote ;
 int __printf_render_time ;
 int __printf_render_vis ;
 int register_printf_render (char const,int ,int ) ;

int
register_printf_render_std(const char *specs)
{

 for (; *specs != '\0'; specs++) {
  switch (*specs) {
  case 'H':
   register_printf_render(*specs,
       __printf_render_hexdump,
       __printf_arginfo_hexdump);
   break;
  case 'M':
   register_printf_render(*specs,
       __printf_render_errno,
       __printf_arginfo_errno);
   break;
  case 'Q':
   register_printf_render(*specs,
       __printf_render_quote,
       __printf_arginfo_quote);
   break;
  case 'T':
   register_printf_render(*specs,
       __printf_render_time,
       __printf_arginfo_time);
   break;
  case 'V':
   register_printf_render(*specs,
       __printf_render_vis,
       __printf_arginfo_vis);
   break;
  default:
   return (-1);
  }
 }
 return (0);
}
