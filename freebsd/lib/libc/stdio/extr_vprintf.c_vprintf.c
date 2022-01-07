
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __va_list ;


 int stdout ;
 int vfprintf (int ,char const*,int ) ;

int
vprintf(const char * __restrict fmt, __va_list ap)
{
 return (vfprintf(stdout, fmt, ap));
}
