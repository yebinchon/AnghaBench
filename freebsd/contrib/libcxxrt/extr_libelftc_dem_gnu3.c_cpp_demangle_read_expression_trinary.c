
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpp_demangle_data {int dummy; } ;


 int cpp_demangle_push_str (struct cpp_demangle_data*,char const*,size_t) ;
 int cpp_demangle_read_expression (struct cpp_demangle_data*) ;

__attribute__((used)) static int
cpp_demangle_read_expression_trinary(struct cpp_demangle_data *ddata,
    const char *name1, size_t len1, const char *name2, size_t len2)
{

 if (ddata == ((void*)0) || name1 == ((void*)0) || len1 == 0 || name2 == ((void*)0) ||
     len2 == 0)
  return (0);

 if (!cpp_demangle_read_expression(ddata))
  return (0);
 if (!cpp_demangle_push_str(ddata, name1, len1))
  return (0);
 if (!cpp_demangle_read_expression(ddata))
  return (0);
 if (!cpp_demangle_push_str(ddata, name2, len2))
  return (0);

 return (cpp_demangle_read_expression(ddata));
}
