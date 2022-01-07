
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpp_demangle_data {char* cur; } ;


 int assert (int) ;
 int cpp_demangle_get_tmpl_param (struct cpp_demangle_data*,long) ;
 scalar_t__ errno ;
 long strtol (char*,char**,int) ;

__attribute__((used)) static int
cpp_demangle_read_tmpl_param(struct cpp_demangle_data *ddata)
{
 long nth;

 if (ddata == ((void*)0) || *ddata->cur != 'T')
  return (0);

 ++ddata->cur;

 if (*ddata->cur == '_')
  return (cpp_demangle_get_tmpl_param(ddata, 0));
 else {

  errno = 0;
  if ((nth = strtol(ddata->cur, (char **) ((void*)0), 36)) == 0 &&
      errno != 0)
   return (0);


  ++nth;

  while (*ddata->cur != '_')
   ++ddata->cur;

  assert(nth > 0);

  return (cpp_demangle_get_tmpl_param(ddata, nth));
 }


 return (0);
}
