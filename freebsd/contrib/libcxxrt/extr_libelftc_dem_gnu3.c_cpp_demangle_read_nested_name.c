
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vector_str {size_t size; } ;
struct cpp_demangle_data {char* cur; int mem_rst; int mem_vat; int mem_cst; scalar_t__ push_head; struct vector_str output; struct vector_str output_tmp; } ;


 int CPP_DEMANGLE_TRY_LIMIT ;
 int cpp_demangle_push_str (struct cpp_demangle_data*,char*,int) ;
 int cpp_demangle_push_subst_v (struct cpp_demangle_data*,struct vector_str*) ;
 int cpp_demangle_read_subst (struct cpp_demangle_data*) ;
 int cpp_demangle_read_tmpl_args (struct cpp_demangle_data*) ;
 int cpp_demangle_read_tmpl_param (struct cpp_demangle_data*) ;
 int cpp_demangle_read_uqname (struct cpp_demangle_data*) ;
 int free (char*) ;
 int vector_str_dest (struct vector_str*) ;
 int vector_str_init (struct vector_str*) ;
 int vector_str_push (struct vector_str*,char*,int) ;
 char* vector_str_substr (struct vector_str*,size_t,int,size_t*) ;

__attribute__((used)) static int
cpp_demangle_read_nested_name(struct cpp_demangle_data *ddata)
{
 struct vector_str *output, v;
 size_t limit, p_idx, subst_str_len;
 int rtn;
 char *subst_str;

 if (ddata == ((void*)0) || *ddata->cur != 'N')
  return (0);
 if (*(++ddata->cur) == '\0')
  return (0);

 while (*ddata->cur == 'r' || *ddata->cur == 'V' ||
     *ddata->cur == 'K') {
  switch (*ddata->cur) {
  case 'r':
   ddata->mem_rst = 1;
   break;
  case 'V':
   ddata->mem_vat = 1;
   break;
  case 'K':
   ddata->mem_cst = 1;
   break;
  }
  ++ddata->cur;
 }

 output = ddata->push_head > 0 ? &ddata->output_tmp : &ddata->output;
 if (!vector_str_init(&v))
  return (0);

 rtn = 0;
 limit = 0;
 for (;;) {
  p_idx = output->size;
  switch (*ddata->cur) {
  case 'I':
   if (!cpp_demangle_read_tmpl_args(ddata))
    goto clean;
   break;
  case 'S':
   if (!cpp_demangle_read_subst(ddata))
    goto clean;
   break;
  case 'T':
   if (!cpp_demangle_read_tmpl_param(ddata))
    goto clean;
   break;
  default:
   if (!cpp_demangle_read_uqname(ddata))
    goto clean;
  }

  if ((subst_str = vector_str_substr(output, p_idx,
      output->size - 1, &subst_str_len)) == ((void*)0))
   goto clean;
  if (!vector_str_push(&v, subst_str, subst_str_len)) {
   free(subst_str);
   goto clean;
  }
  free(subst_str);

  if (!cpp_demangle_push_subst_v(ddata, &v))
   goto clean;
  if (*ddata->cur == 'E')
   break;
  else if (*ddata->cur != 'I' &&
      *ddata->cur != 'C' && *ddata->cur != 'D') {
   if (!cpp_demangle_push_str(ddata, "::", 2))
    goto clean;
   if (!vector_str_push(&v, "::", 2))
    goto clean;
  }
  if (limit++ > CPP_DEMANGLE_TRY_LIMIT)
   goto clean;
 }

 ++ddata->cur;
 rtn = 1;

clean:
 vector_str_dest(&v);

 return (rtn);
}
