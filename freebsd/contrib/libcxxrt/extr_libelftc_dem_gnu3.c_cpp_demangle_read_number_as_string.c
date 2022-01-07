
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpp_demangle_data {int dummy; } ;


 scalar_t__ asprintf (char**,char*,long) ;
 int cpp_demangle_read_number (struct cpp_demangle_data*,long*) ;

__attribute__((used)) static int
cpp_demangle_read_number_as_string(struct cpp_demangle_data *ddata, char **str)
{
 long n;

 if (!cpp_demangle_read_number(ddata, &n)) {
  *str = ((void*)0);
  return (0);
 }

 if (asprintf(str, "%ld", n) < 0) {
  *str = ((void*)0);
  return (0);
 }

 return (1);
}
