
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int internal_vproblem (int *,char const*,int,char const*,int ) ;
 int internal_warning_problem ;

void
internal_vwarning (const char *file, int line, const char *fmt, va_list ap)
{
  internal_vproblem (&internal_warning_problem, file, line, fmt, ap);
}
