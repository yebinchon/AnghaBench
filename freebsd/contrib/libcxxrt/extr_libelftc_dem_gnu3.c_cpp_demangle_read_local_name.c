
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpp_demangle_data {char* cur; int paren; } ;


 int CPP_DEMANGLE_TRY_LIMIT ;
 scalar_t__ ELFTC_ISDIGIT (char) ;
 int cpp_demangle_push_str (struct cpp_demangle_data*,char*,int) ;
 int cpp_demangle_read_encoding (struct cpp_demangle_data*) ;
 int cpp_demangle_read_name (struct cpp_demangle_data*) ;
 int cpp_demangle_read_type (struct cpp_demangle_data*,int) ;

__attribute__((used)) static int
cpp_demangle_read_local_name(struct cpp_demangle_data *ddata)
{
 size_t limit;

 if (ddata == ((void*)0))
  return (0);
 if (*(++ddata->cur) == '\0')
  return (0);
 if (!cpp_demangle_read_encoding(ddata))
  return (0);

 limit = 0;
 for (;;) {
  if (!cpp_demangle_read_type(ddata, 1))
   return (0);
  if (*ddata->cur == 'E')
   break;
  if (limit++ > CPP_DEMANGLE_TRY_LIMIT)
   return (0);
 }
 if (*(++ddata->cur) == '\0')
  return (0);
 if (ddata->paren == 1) {
  if (!cpp_demangle_push_str(ddata, ")", 1))
   return (0);
  ddata->paren = 0;
 }
 if (*ddata->cur == 's')
  ++ddata->cur;
 else {
  if (!cpp_demangle_push_str(ddata, "::", 2))
   return (0);
  if (!cpp_demangle_read_name(ddata))
   return (0);
 }
 if (*ddata->cur == '_') {
  ++ddata->cur;
  while (ELFTC_ISDIGIT(*ddata->cur) != 0)
   ++ddata->cur;
 }

 return (1);
}
