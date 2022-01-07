
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpp_demangle_data {scalar_t__ push_head; int output; int output_tmp; } ;


 int vector_str_push (int *,char const*,size_t) ;

__attribute__((used)) static int
cpp_demangle_push_str(struct cpp_demangle_data *ddata, const char *str,
    size_t len)
{

 if (ddata == ((void*)0) || str == ((void*)0) || len == 0)
  return (0);

 if (ddata->push_head > 0)
  return (vector_str_push(&ddata->output_tmp, str, len));

 return (vector_str_push(&ddata->output, str, len));
}
