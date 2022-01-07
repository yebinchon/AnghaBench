
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int va_list ;
struct TYPE_5__ {int _flags; scalar_t__ _file; } ;
typedef TYPE_1__ FILE ;


 int __SNBF ;
 int __SRW ;
 int __SWR ;
 int __v2printf (TYPE_1__*,char const*,unsigned int,int ) ;
 int __v3printf (TYPE_1__*,char const*,unsigned int,int ) ;

int
__xvprintf(FILE *fp, const char *fmt0, va_list ap)
{
 unsigned u;
 const char *p;


 for (p = fmt0, u = 0; *p; p++) {
  if (*p != '%')
   continue;
  u++;
  if (p[1] == '%')
   p++;
 }


 if ((fp->_flags & (__SNBF|__SWR|__SRW)) == (__SNBF|__SWR) &&
     fp->_file >= 0)
  return (__v3printf(fp, fmt0, u, ap));
 else
  return (__v2printf(fp, fmt0, u, ap));
}
