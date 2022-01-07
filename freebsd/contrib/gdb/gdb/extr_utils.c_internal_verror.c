
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int RETURN_ERROR ;
 int internal_error_problem ;
 int internal_vproblem (int *,char const*,int,char const*,int ) ;
 int throw_exception (int ) ;

void
internal_verror (const char *file, int line, const char *fmt, va_list ap)
{
  internal_vproblem (&internal_error_problem, file, line, fmt, ap);
  throw_exception (RETURN_ERROR);
}
