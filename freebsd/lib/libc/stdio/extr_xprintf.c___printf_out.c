
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct printf_info {int width; int pad; scalar_t__ left; } ;
struct __printf_io {int dummy; } ;


 scalar_t__ __printf_pad (struct __printf_io*,int,int) ;
 scalar_t__ __printf_puts (struct __printf_io*,void const*,int) ;

int
__printf_out(struct __printf_io *io, const struct printf_info *pi, const void *ptr, int len)
{
 int ret = 0;

 if ((!pi->left) && pi->width > len)
  ret += __printf_pad(io, pi->width - len, pi->pad == '0');
 ret += __printf_puts(io, ptr, len);
 if (pi->left && pi->width > len)
  ret += __printf_pad(io, pi->width - len, pi->pad == '0');
 return (ret);
}
