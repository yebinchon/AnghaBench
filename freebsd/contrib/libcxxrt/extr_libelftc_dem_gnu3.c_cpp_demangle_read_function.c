
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vector_type_qualifier {int dummy; } ;
struct TYPE_2__ {size_t size; char** container; } ;
struct cpp_demangle_data {float* cur; int cmd; int func_type; TYPE_1__ class_type; } ;


 int CPP_DEMANGLE_TRY_LIMIT ;
 int READ_PTRMEM ;
 int cpp_demangle_push_str (struct cpp_demangle_data*,char const*,int) ;
 int cpp_demangle_push_type_qualifier (struct cpp_demangle_data*,struct vector_type_qualifier*,char const*) ;
 int cpp_demangle_read_type (struct cpp_demangle_data*,int ) ;
 size_t strlen (char const*) ;
 int vector_read_cmd_find (int *,int ) ;
 int vector_type_qualifier_dest (struct vector_type_qualifier*) ;
 int vector_type_qualifier_init (struct vector_type_qualifier*) ;

__attribute__((used)) static int
cpp_demangle_read_function(struct cpp_demangle_data *ddata, int *ext_c,
    struct vector_type_qualifier *v)
{
 size_t class_type_size, class_type_len, limit;
 const char *class_type;

 if (ddata == ((void*)0) || *ddata->cur != 'F' || v == ((void*)0))
  return (0);

 ++ddata->cur;
 if (*ddata->cur == 'Y') {
  if (ext_c != ((void*)0))
   *ext_c = 1;
  ++ddata->cur;
 }
 if (!cpp_demangle_read_type(ddata, 0))
  return (0);
 if (*ddata->cur != 'E') {
  if (!cpp_demangle_push_str(ddata, "(", 1))
   return (0);
  if (vector_read_cmd_find(&ddata->cmd, READ_PTRMEM)) {
   if ((class_type_size = ddata->class_type.size) == 0)
    return (0);
   class_type =
       ddata->class_type.container[class_type_size - 1];
   if (class_type == ((void*)0))
    return (0);
   if ((class_type_len = strlen(class_type)) == 0)
    return (0);
   if (!cpp_demangle_push_str(ddata, class_type,
       class_type_len))
    return (0);
   if (!cpp_demangle_push_str(ddata, "::*", 3))
    return (0);
   ++ddata->func_type;
  } else {
   if (!cpp_demangle_push_type_qualifier(ddata, v,
       (const char *) ((void*)0)))
    return (0);
   vector_type_qualifier_dest(v);
   if (!vector_type_qualifier_init(v))
    return (0);
  }

  if (!cpp_demangle_push_str(ddata, ")(", 2))
   return (0);

  limit = 0;
  for (;;) {
   if (!cpp_demangle_read_type(ddata, 0))
    return (0);
   if (*ddata->cur == 'E')
    break;
   if (limit++ > CPP_DEMANGLE_TRY_LIMIT)
    return (0);
  }

  if (vector_read_cmd_find(&ddata->cmd, READ_PTRMEM) == 1) {
   if (!cpp_demangle_push_type_qualifier(ddata, v,
       (const char *) ((void*)0)))
    return (0);
   vector_type_qualifier_dest(v);
   if (!vector_type_qualifier_init(v))
    return (0);
  }

  if (!cpp_demangle_push_str(ddata, ")", 1))
   return (0);
 }

 ++ddata->cur;

 return (1);
}
