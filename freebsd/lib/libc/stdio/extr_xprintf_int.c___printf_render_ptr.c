
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uintmax_t ;
struct printf_info {char spec; int alt; int is_long_double; } ;
struct __printf_io {int dummy; } ;


 int __printf_render_int (struct __printf_io*,struct printf_info*,void const**) ;

int
__printf_render_ptr(struct __printf_io *io, const struct printf_info *pi, const void *const *arg)
{
 struct printf_info p2;
 uintmax_t u;
 const void *p;
 u = (uintmax_t)(uintptr_t) *((void **)arg[0]);
 p2 = *pi;

 p2.spec = 'x';
 p2.alt = 1;
 p2.is_long_double = 1;
 p = &u;
 return (__printf_render_int(io, &p2, &p));
}
