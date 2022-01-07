
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpp_demangle_data {char* cur; } ;


 scalar_t__ ELFTC_ISDIGIT (char) ;
 int cpp_demangle_read_sname (struct cpp_demangle_data*) ;

__attribute__((used)) static int
cpp_demangle_local_source_name(struct cpp_demangle_data *ddata)
{

 if (ddata == ((void*)0) || *ddata->cur != 'L')
  return (0);
 ++ddata->cur;


 if (!cpp_demangle_read_sname(ddata))
  return (0);


 if (*ddata->cur == '_') {
  ++ddata->cur;
  while (ELFTC_ISDIGIT(*ddata->cur) != 0)
   ++ddata->cur;
 }

 return (1);
}
