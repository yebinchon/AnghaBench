
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;



__attribute__((used)) static int
mi_interp_query_hook (const char *ctlstr, va_list ap)
{
  return 1;
}
