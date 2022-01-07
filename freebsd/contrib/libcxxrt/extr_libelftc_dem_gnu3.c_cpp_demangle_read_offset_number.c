
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpp_demangle_data {char* cur; } ;


 int assert (int ) ;
 int cpp_demangle_push_str (struct cpp_demangle_data*,char const*,int) ;

__attribute__((used)) static int
cpp_demangle_read_offset_number(struct cpp_demangle_data *ddata)
{
 bool negative;
 const char *start;

 if (ddata == ((void*)0) || *ddata->cur == '\0')
  return (0);


 if (*ddata->cur == 'n') {
  negative = 1;
  start = ddata->cur + 1;
 } else {
  negative = 0;
  start = ddata->cur;
 }

 while (*ddata->cur != '_')
  ++ddata->cur;

 if (negative && !cpp_demangle_push_str(ddata, "-", 1))
  return (0);

 assert(start != ((void*)0));

 if (!cpp_demangle_push_str(ddata, start, ddata->cur - start))
  return (0);
 if (!cpp_demangle_push_str(ddata, " ", 1))
  return (0);

 ++ddata->cur;

 return (1);
}
