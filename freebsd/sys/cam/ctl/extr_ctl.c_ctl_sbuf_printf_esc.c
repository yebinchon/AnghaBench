
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int dummy; } ;


 int sbuf_printf (struct sbuf*,char*) ;
 int sbuf_putc (struct sbuf*,char) ;

int
ctl_sbuf_printf_esc(struct sbuf *sb, char *str, int size)
{
 char *end = str + size;
 int retval;

 retval = 0;

 for (; *str && str < end; str++) {
  switch (*str) {
  case '&':
   retval = sbuf_printf(sb, "&amp;");
   break;
  case '>':
   retval = sbuf_printf(sb, "&gt;");
   break;
  case '<':
   retval = sbuf_printf(sb, "&lt;");
   break;
  default:
   retval = sbuf_putc(sb, *str);
   break;
  }

  if (retval != 0)
   break;

 }

 return (retval);
}
