
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t size; } ;
struct cpp_demangle_data {char* cur; int func_type; int cmd; TYPE_1__ class_type; TYPE_1__ output; } ;


 int READ_PTRMEM ;
 int cpp_demangle_push_str (struct cpp_demangle_data*,char*,int) ;
 int cpp_demangle_read_type (struct cpp_demangle_data*,int ) ;
 int free (char*) ;
 int vector_read_cmd_pop (int *) ;
 int vector_read_cmd_push (int *,int ) ;
 int vector_str_pop (TYPE_1__*) ;
 int vector_str_push (TYPE_1__*,char*,size_t) ;
 char* vector_str_substr (TYPE_1__*,size_t,int,size_t*) ;

__attribute__((used)) static int
cpp_demangle_read_pointer_to_member(struct cpp_demangle_data *ddata)
{
 size_t class_type_len, i, idx, p_idx;
 int p_func_type, rtn;
 char *class_type;

 if (ddata == ((void*)0) || *ddata->cur != 'M' || *(++ddata->cur) == '\0')
  return (0);

 p_idx = ddata->output.size;
 if (!cpp_demangle_read_type(ddata, 0))
  return (0);

 if ((class_type = vector_str_substr(&ddata->output, p_idx,
     ddata->output.size - 1, &class_type_len)) == ((void*)0))
  return (0);

 rtn = 0;
 idx = ddata->output.size;
 for (i = p_idx; i < idx; ++i)
  if (!vector_str_pop(&ddata->output))
   goto clean1;

 if (!vector_read_cmd_push(&ddata->cmd, READ_PTRMEM))
  goto clean1;

 if (!vector_str_push(&ddata->class_type, class_type, class_type_len))
  goto clean2;

 p_func_type = ddata->func_type;
 if (!cpp_demangle_read_type(ddata, 0))
  goto clean3;

 if (p_func_type == ddata->func_type) {
  if (!cpp_demangle_push_str(ddata, " ", 1))
   goto clean3;
  if (!cpp_demangle_push_str(ddata, class_type, class_type_len))
   goto clean3;
  if (!cpp_demangle_push_str(ddata, "::*", 3))
   goto clean3;
 }

 rtn = 1;
clean3:
 if (!vector_str_pop(&ddata->class_type))
  rtn = 0;
clean2:
 if (!vector_read_cmd_pop(&ddata->cmd))
  rtn = 0;
clean1:
 free(class_type);

 return (rtn);
}
