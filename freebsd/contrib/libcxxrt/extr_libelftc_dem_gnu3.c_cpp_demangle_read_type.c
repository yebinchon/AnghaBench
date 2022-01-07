
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vector_str {int size; int * container; } ;
struct vector_type_qualifier {struct vector_str ext_name; } ;
struct cpp_demangle_data {scalar_t__ push_head; int paren; int pfirst; char* cur; struct vector_str output_tmp; struct vector_str output; struct vector_str subst; } ;


 int TYPE_CMX ;
 int TYPE_CST ;
 int TYPE_EXT ;
 int TYPE_IMG ;
 int TYPE_PTR ;
 int TYPE_REF ;
 int TYPE_RST ;
 int TYPE_VAT ;
 int TYPE_VEC ;
 int assert (int ) ;
 int cpp_demangle_push_str (struct cpp_demangle_data*,char*,int) ;
 int cpp_demangle_push_type_qualifier (struct cpp_demangle_data*,struct vector_type_qualifier*,char*) ;
 int cpp_demangle_read_array (struct cpp_demangle_data*) ;
 int cpp_demangle_read_expression_flat (struct cpp_demangle_data*,char**) ;
 int cpp_demangle_read_function (struct cpp_demangle_data*,int*,struct vector_type_qualifier*) ;
 int cpp_demangle_read_name (struct cpp_demangle_data*) ;
 int cpp_demangle_read_number (struct cpp_demangle_data*,long*) ;
 int cpp_demangle_read_number_as_string (struct cpp_demangle_data*,char**) ;
 int cpp_demangle_read_pointer_to_member (struct cpp_demangle_data*) ;
 int cpp_demangle_read_sname (struct cpp_demangle_data*) ;
 int cpp_demangle_read_subst (struct cpp_demangle_data*) ;
 scalar_t__ cpp_demangle_read_tmpl_args (struct cpp_demangle_data*) ;
 int cpp_demangle_read_tmpl_param (struct cpp_demangle_data*) ;
 int free (char*) ;
 int strlen (char*) ;
 int strncmp (int ,char*,int) ;
 int vector_str_dest (struct vector_str*) ;
 int vector_str_find (struct vector_str*,char*,size_t) ;
 int vector_str_init (struct vector_str*) ;
 int vector_str_pop (struct vector_str*) ;
 int vector_str_push (struct vector_str*,char*,int) ;
 int vector_str_push_vector_head (struct vector_str*,struct vector_str*) ;
 char* vector_str_substr (struct vector_str*,size_t,int,size_t*) ;
 int vector_type_qualifier_dest (struct vector_type_qualifier*) ;
 int vector_type_qualifier_init (struct vector_type_qualifier*) ;
 int vector_type_qualifier_push (struct vector_type_qualifier*,int ) ;

__attribute__((used)) static int
cpp_demangle_read_type(struct cpp_demangle_data *ddata, int delimit)
{
 struct vector_type_qualifier v;
 struct vector_str *output;
 size_t p_idx, type_str_len;
 int extern_c, is_builtin;
 long len;
 char *type_str, *exp_str, *num_str;

 if (ddata == ((void*)0))
  return (0);

 output = &ddata->output;
 if (ddata->output.size > 0 && !strncmp(ddata->output.container[ddata->output.size - 1], ">", 1)) {
  ddata->push_head++;
  output = &ddata->output_tmp;
 } else if (delimit == 1) {
  if (ddata->paren == 0) {
   if (!cpp_demangle_push_str(ddata, "(", 1))
    return (0);
   if (ddata->output.size < 2)
    return (0);
   ddata->paren = 1;
   ddata->pfirst = 1;

   if (ddata->subst.size == 1 &&
       !vector_str_pop(&ddata->subst))
    return (0);
  }

  if (ddata->pfirst)
   ddata->pfirst = 0;
  else if (*ddata->cur != 'I' &&
      !cpp_demangle_push_str(ddata, ", ", 2))
   return (0);
 }

 assert(output != ((void*)0));





 if (!vector_type_qualifier_init(&v))
  return (0);

 extern_c = 0;
 is_builtin = 1;
 p_idx = output->size;
 type_str = exp_str = num_str = ((void*)0);
again:

 switch (*ddata->cur) {
 case 'a':

  if (!cpp_demangle_push_str(ddata, "signed char", 11))
   goto clean;
  ++ddata->cur;
  goto rtn;

 case 'A':

  if (!cpp_demangle_read_array(ddata))
   goto clean;
  is_builtin = 0;
  goto rtn;

 case 'b':

  if (!cpp_demangle_push_str(ddata, "bool", 4))
   goto clean;
  ++ddata->cur;
  goto rtn;

 case 'C':

  if (!vector_type_qualifier_push(&v, TYPE_CMX))
   goto clean;
  ++ddata->cur;
  goto again;

 case 'c':

  if (!cpp_demangle_push_str(ddata, "char", 4))
   goto clean;
  ++ddata->cur;
  goto rtn;

 case 'd':

  if (!cpp_demangle_push_str(ddata, "double", 6))
   goto clean;
  ++ddata->cur;
  goto rtn;

 case 'D':
  ++ddata->cur;
  switch (*ddata->cur) {
  case 'd':

   if (!cpp_demangle_push_str(ddata, "decimal64", 9))
    goto clean;
   ++ddata->cur;
   break;
  case 'e':

   if (!cpp_demangle_push_str(ddata, "decimal128", 10))
    goto clean;
   ++ddata->cur;
   break;
  case 'f':

   if (!cpp_demangle_push_str(ddata, "decimal32", 9))
    goto clean;
   ++ddata->cur;
   break;
  case 'h':

   if (!cpp_demangle_push_str(ddata, "half", 4))
    goto clean;
   ++ddata->cur;
   break;
  case 'i':

   if (!cpp_demangle_push_str(ddata, "char32_t", 8))
    goto clean;
   ++ddata->cur;
   break;
  case 'n':

   if (!cpp_demangle_push_str(ddata, "decltype(nullptr)",
       17))
    goto clean;
   ++ddata->cur;
   break;
  case 's':

   if (!cpp_demangle_push_str(ddata, "char16_t", 8))
    goto clean;
   ++ddata->cur;
   break;
  case 'v':

   ++ddata->cur;
   if (*ddata->cur == '_') {
    ++ddata->cur;
    if (!cpp_demangle_read_expression_flat(ddata,
        &exp_str))
     goto clean;
    if (!vector_str_push(&v.ext_name, exp_str,
        strlen(exp_str)))
     goto clean;
   } else {
    if (!cpp_demangle_read_number_as_string(ddata,
        &num_str))
     goto clean;
    if (!vector_str_push(&v.ext_name, num_str,
        strlen(num_str)))
     goto clean;
   }
   if (*ddata->cur != '_')
    goto clean;
   ++ddata->cur;
   if (!vector_type_qualifier_push(&v, TYPE_VEC))
    goto clean;
   goto again;
  default:
   goto clean;
  }
  goto rtn;

 case 'e':

  if (!cpp_demangle_push_str(ddata, "long double", 11))
   goto clean;
  ++ddata->cur;
  goto rtn;

 case 'f':

  if (!cpp_demangle_push_str(ddata, "float", 5))
   goto clean;
  ++ddata->cur;
  goto rtn;

 case 'F':

  if (!cpp_demangle_read_function(ddata, &extern_c, &v))
   goto clean;
  is_builtin = 0;
  goto rtn;

 case 'g':

  if (!cpp_demangle_push_str(ddata, "__float128", 10))
   goto clean;
  ++ddata->cur;
  goto rtn;

 case 'G':

  if (!vector_type_qualifier_push(&v, TYPE_IMG))
   goto clean;
  ++ddata->cur;
  goto again;

 case 'h':

  if (!cpp_demangle_push_str(ddata, "unsigned char", 13))
   goto clean;
  ++ddata->cur;
  goto rtn;

 case 'i':

  if (!cpp_demangle_push_str(ddata, "int", 3))
   goto clean;
  ++ddata->cur;
  goto rtn;

 case 'j':

  if (!cpp_demangle_push_str(ddata, "unsigned int", 12))
   goto clean;
  ++ddata->cur;
  goto rtn;

 case 'K':

  if (!vector_type_qualifier_push(&v, TYPE_CST))
   goto clean;
  ++ddata->cur;
  goto again;

 case 'l':

  if (!cpp_demangle_push_str(ddata, "long", 4))
   goto clean;
  ++ddata->cur;
  goto rtn;

 case 'm':

  if (!cpp_demangle_push_str(ddata, "unsigned long", 13))
   goto clean;

  ++ddata->cur;

  goto rtn;
 case 'M':

  if (!cpp_demangle_read_pointer_to_member(ddata))
   goto clean;
  is_builtin = 0;
  goto rtn;

 case 'n':

  if (!cpp_demangle_push_str(ddata, "__int128", 8))
   goto clean;
  ++ddata->cur;
  goto rtn;

 case 'o':

  if (!cpp_demangle_push_str(ddata, "unsigned __int128", 17))
   goto clean;
  ++ddata->cur;
  goto rtn;

 case 'P':

  if (!vector_type_qualifier_push(&v, TYPE_PTR))
   goto clean;
  ++ddata->cur;
  goto again;

 case 'r':

  if (!vector_type_qualifier_push(&v, TYPE_RST))
   goto clean;
  ++ddata->cur;
  goto again;

 case 'R':

  if (!vector_type_qualifier_push(&v, TYPE_REF))
   goto clean;
  ++ddata->cur;
  goto again;

 case 's':

  if (!cpp_demangle_push_str(ddata, "short", 5))
   goto clean;
  ++ddata->cur;
  goto rtn;

 case 'S':

  if (!cpp_demangle_read_subst(ddata))
   goto clean;
  is_builtin = 0;
  goto rtn;

 case 't':

  if (!cpp_demangle_push_str(ddata, "unsigned short", 14))
   goto clean;
  ++ddata->cur;
  goto rtn;

 case 'T':

  if (!cpp_demangle_read_tmpl_param(ddata))
   goto clean;
  is_builtin = 0;
  goto rtn;

 case 'u':

  ++ddata->cur;
  if (!cpp_demangle_read_sname(ddata))
   goto clean;
  is_builtin = 0;
  goto rtn;

 case 'U':

  if (!cpp_demangle_read_number(ddata, &len))
   goto clean;
  if (len <= 0)
   goto clean;
  if (!vector_str_push(&v.ext_name, ddata->cur, len))
   return (0);
  ddata->cur += len;
  if (!vector_type_qualifier_push(&v, TYPE_EXT))
   goto clean;
  goto again;

 case 'v':

  if (!cpp_demangle_push_str(ddata, "void", 4))
   goto clean;
  ++ddata->cur;
  goto rtn;

 case 'V':

  if (!vector_type_qualifier_push(&v, TYPE_VAT))
   goto clean;
  ++ddata->cur;
  goto again;

 case 'w':

  if (!cpp_demangle_push_str(ddata, "wchar_t", 7))
   goto clean;
  ++ddata->cur;
  goto rtn;

 case 'x':

  if (!cpp_demangle_push_str(ddata, "long long", 9))
   goto clean;
  ++ddata->cur;
  goto rtn;

 case 'y':

  if (!cpp_demangle_push_str(ddata, "unsigned long long", 18))
   goto clean;
  ++ddata->cur;
  goto rtn;

 case 'z':

  if (!cpp_demangle_push_str(ddata, "...", 3))
   goto clean;
  ++ddata->cur;
  goto rtn;
 }

 if (!cpp_demangle_read_name(ddata))
  goto clean;

 is_builtin = 0;
rtn:
 if ((type_str = vector_str_substr(output, p_idx, output->size - 1,
     &type_str_len)) == ((void*)0))
  goto clean;

 if (is_builtin == 0) {
  if (!vector_str_find(&ddata->subst, type_str, type_str_len) &&
      !vector_str_push(&ddata->subst, type_str, type_str_len))
   goto clean;
 }

 if (!cpp_demangle_push_type_qualifier(ddata, &v, type_str))
  goto clean;

 free(type_str);
 free(exp_str);
 free(num_str);
 vector_type_qualifier_dest(&v);

 if (ddata->push_head > 0) {
  if (*ddata->cur == 'I' && cpp_demangle_read_tmpl_args(ddata)
      == 0)
   return (0);

  if (--ddata->push_head > 0)
   return (1);

  if (!vector_str_push(&ddata->output_tmp, " ", 1))
   return (0);

  if (!vector_str_push_vector_head(&ddata->output,
      &ddata->output_tmp))
   return (0);

  vector_str_dest(&ddata->output_tmp);
  if (!vector_str_init(&ddata->output_tmp))
   return (0);

  if (!cpp_demangle_push_str(ddata, "(", 1))
   return (0);

  ddata->paren = 1;
  ddata->pfirst = 1;
 }

 return (1);
clean:
 free(type_str);
 free(exp_str);
 free(num_str);
 vector_type_qualifier_dest(&v);

 return (0);
}
