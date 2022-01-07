
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpp_demangle_data {char* cur; } ;


 int cpp_demangle_read_expr_primary (struct cpp_demangle_data*) ;
 int cpp_demangle_read_expression (struct cpp_demangle_data*) ;
 int cpp_demangle_read_type (struct cpp_demangle_data*,int ) ;

__attribute__((used)) static int
cpp_demangle_read_tmpl_arg(struct cpp_demangle_data *ddata)
{

 if (ddata == ((void*)0) || *ddata->cur == '\0')
  return (0);

 switch (*ddata->cur) {
 case 'L':
  return (cpp_demangle_read_expr_primary(ddata));
 case 'X':
  return (cpp_demangle_read_expression(ddata));
 }

 return (cpp_demangle_read_type(ddata, 0));
}
