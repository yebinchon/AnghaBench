
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wint_t ;
typedef int wchar_t ;
struct printf_info {char spec; int prec; scalar_t__ is_long; } ;
struct __printf_io {int dummy; } ;


 int __printf_out (struct __printf_io*,struct printf_info const*,char const*,int) ;
 char* __wcsconv (int *,int) ;
 int free (char*) ;
 int strlen (char const*) ;

int
__printf_render_str(struct __printf_io *io, const struct printf_info *pi, const void *const *arg)
{
 const char *p;
 wchar_t *wcp;
 char *convbuf;
 int l;

 if (pi->is_long || pi->spec == 'S') {
  wcp = *((wint_t **)arg[0]);
  if (wcp == ((void*)0))
   return (__printf_out(io, pi, "(null)", 6));
  convbuf = __wcsconv(wcp, pi->prec);
  if (convbuf == ((void*)0))
   return (-1);
  l = __printf_out(io, pi, convbuf, strlen(convbuf));
  free(convbuf);
  return (l);
 }
 p = *((char **)arg[0]);
 if (p == ((void*)0))
  return (__printf_out(io, pi, "(null)", 6));
 l = strlen(p);
 if (pi->prec >= 0 && pi->prec < l)
  l = pi->prec;
 return (__printf_out(io, pi, p, l));
}
