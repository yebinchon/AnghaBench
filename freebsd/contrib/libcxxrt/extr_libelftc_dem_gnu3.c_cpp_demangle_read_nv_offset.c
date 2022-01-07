
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpp_demangle_data {int dummy; } ;


 int cpp_demangle_push_str (struct cpp_demangle_data*,char*,int) ;
 int cpp_demangle_read_offset_number (struct cpp_demangle_data*) ;

__attribute__((used)) static int
cpp_demangle_read_nv_offset(struct cpp_demangle_data *ddata)
{

 if (ddata == ((void*)0))
  return (0);

 if (!cpp_demangle_push_str(ddata, "offset : ", 9))
  return (0);

 return (cpp_demangle_read_offset_number(ddata));
}
