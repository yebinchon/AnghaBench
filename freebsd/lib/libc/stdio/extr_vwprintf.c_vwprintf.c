
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int va_list ;


 int stdout ;
 int vfwprintf (int ,int const*,int ) ;

int
vwprintf(const wchar_t * __restrict fmt, va_list ap)
{
 return (vfwprintf(stdout, fmt, ap));
}
