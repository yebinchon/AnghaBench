
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct printf_info {unsigned int prec; scalar_t__ alt; int pad; scalar_t__ showsign; } ;
struct __printf_io {int dummy; } ;


 int VIS_CSTYLE ;
 int VIS_HTTPSTYLE ;
 int VIS_OCTAL ;
 int VIS_WHITE ;
 int __printf_flush (struct __printf_io*) ;
 int __printf_out (struct __printf_io*,struct printf_info const*,char*,int) ;
 int free (char*) ;
 char* malloc (unsigned int) ;
 unsigned int strlen (char*) ;
 int strvisx (char*,char*,unsigned int,int) ;

int
__printf_render_vis(struct __printf_io *io, const struct printf_info *pi, const void *const *arg)
{
 char *p, *buf;
 unsigned l;
 int ret;

 ret = 0;
 p = *((char **)arg[0]);
 if (p == ((void*)0))
  return (__printf_out(io, pi, "(null)", 6));
 if (pi->prec >= 0)
  l = pi->prec;
 else
  l = strlen(p);
 buf = malloc(l * 4 + 1);
 if (buf == ((void*)0))
  return (-1);
 if (pi->showsign)
  ret = strvisx(buf, p, l, VIS_WHITE | VIS_HTTPSTYLE);
 else if (pi->pad == '0')
  ret = strvisx(buf, p, l, VIS_WHITE | VIS_OCTAL);
 else if (pi->alt)
  ret = strvisx(buf, p, l, VIS_WHITE);
 else
  ret = strvisx(buf, p, l, VIS_WHITE | VIS_CSTYLE | VIS_OCTAL);
 ret += __printf_out(io, pi, buf, ret);
 __printf_flush(io);
 free(buf);
 return(ret);
}
