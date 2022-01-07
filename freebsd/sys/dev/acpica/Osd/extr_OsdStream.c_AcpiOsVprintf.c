
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int vprintf (char const*,int ) ;

void
AcpiOsVprintf(const char *Format, va_list Args)
{
    vprintf(Format, Args);
}
