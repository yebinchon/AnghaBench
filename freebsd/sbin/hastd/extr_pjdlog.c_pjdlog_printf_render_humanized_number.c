
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct printf_info {int dummy; } ;
struct __printf_io {int dummy; } ;
typedef scalar_t__ intmax_t ;
typedef int int64_t ;
typedef int buf ;


 int HN_AUTOSCALE ;
 int HN_DECIMAL ;
 int HN_NOSPACE ;
 int __printf_flush (struct __printf_io*) ;
 int __printf_out (struct __printf_io*,struct printf_info const*,char*,int ) ;
 int humanize_number (char*,int,int ,char*,int ,int) ;
 int strlen (char*) ;

__attribute__((used)) static int
pjdlog_printf_render_humanized_number(struct __printf_io *io,
    const struct printf_info *pi, const void * const *arg)
{
 char buf[5];
 intmax_t num;
 int ret;

 num = *(const intmax_t *)arg[0];
 humanize_number(buf, sizeof(buf), (int64_t)num, "", HN_AUTOSCALE,
     HN_NOSPACE | HN_DECIMAL);
 ret = __printf_out(io, pi, buf, strlen(buf));
 __printf_flush(io);
 return (ret);
}
