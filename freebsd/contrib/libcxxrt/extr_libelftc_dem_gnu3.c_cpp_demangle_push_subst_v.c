
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vector_str {int dummy; } ;
struct cpp_demangle_data {int dummy; } ;


 int cpp_demangle_push_subst (struct cpp_demangle_data*,char*,size_t) ;
 int free (char*) ;
 char* vector_str_get_flat (struct vector_str*,size_t*) ;

__attribute__((used)) static int
cpp_demangle_push_subst_v(struct cpp_demangle_data *ddata, struct vector_str *v)
{
 size_t str_len;
 int rtn;
 char *str;

 if (ddata == ((void*)0) || v == ((void*)0))
  return (0);

 if ((str = vector_str_get_flat(v, &str_len)) == ((void*)0))
  return (0);

 rtn = cpp_demangle_push_subst(ddata, str, str_len);

 free(str);

 return (rtn);
}
