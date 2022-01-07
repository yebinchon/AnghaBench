
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ size; } ;
struct cpp_demangle_data {char* cur; TYPE_1__ output; scalar_t__ mem_rst; scalar_t__ mem_cst; scalar_t__ mem_vat; scalar_t__ paren; } ;
typedef int ssize_t ;


 int CPP_DEMANGLE_TRY_LIMIT ;
 int cpp_demangle_data_dest (struct cpp_demangle_data*) ;
 int cpp_demangle_data_init (struct cpp_demangle_data*,char const*) ;
 int cpp_demangle_read_encoding (struct cpp_demangle_data*) ;
 int cpp_demangle_read_type (struct cpp_demangle_data*,int) ;
 char* malloc (int) ;
 int snprintf (char*,int,char*,char const*) ;
 int strlen (char const*) ;
 int strncmp (char const*,char*,int) ;
 char* vector_str_get_flat (TYPE_1__*,size_t*) ;
 int vector_str_push (TYPE_1__*,char*,int) ;

char *
__cxa_demangle_gnu3(const char *org)
{
 struct cpp_demangle_data ddata;
 ssize_t org_len;
 unsigned int limit;
 char *rtn = ((void*)0);

 if (org == ((void*)0))
  return (((void*)0));

 org_len = strlen(org);
 if (org_len > 11 && !strncmp(org, "_GLOBAL__I_", 11)) {
  if ((rtn = malloc(org_len + 19)) == ((void*)0))
   return (((void*)0));
  snprintf(rtn, org_len + 19,
      "global constructors keyed to %s", org + 11);
  return (rtn);
 }


 if ((org_len < 2) || (org[0] != '_' || org[1] != 'Z' )) {
  if (!cpp_demangle_data_init(&ddata, org))
   return (((void*)0));
  if (!cpp_demangle_read_type(&ddata, 0))
   goto clean;
  rtn = vector_str_get_flat(&ddata.output, (size_t *) ((void*)0));
  goto clean;
 }


 if (!cpp_demangle_data_init(&ddata, org + 2))
  return (((void*)0));

 rtn = ((void*)0);

 if (!cpp_demangle_read_encoding(&ddata))
  goto clean;

 limit = 0;
 while (*ddata.cur != '\0') {



  if (*ddata.cur == '@' && *(ddata.cur + 1) == '@')
   break;
  if (!cpp_demangle_read_type(&ddata, 1))
   goto clean;
  if (limit++ > CPP_DEMANGLE_TRY_LIMIT)
   goto clean;
 }

 if (ddata.output.size == 0)
  goto clean;
 if (ddata.paren && !vector_str_push(&ddata.output, ")", 1))
  goto clean;
 if (ddata.mem_vat && !vector_str_push(&ddata.output, " volatile", 9))
  goto clean;
 if (ddata.mem_cst && !vector_str_push(&ddata.output, " const", 6))
  goto clean;
 if (ddata.mem_rst && !vector_str_push(&ddata.output, " restrict", 9))
  goto clean;

 rtn = vector_str_get_flat(&ddata.output, (size_t *) ((void*)0));

clean:
 cpp_demangle_data_dest(&ddata);

 return (rtn);
}
