
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auditfilter_module {int * am_argv; int * am_arg_buffer; int * am_modulename; } ;


 int free (int *) ;

__attribute__((used)) static void
auditfilter_module_free(struct auditfilter_module *am)
{

 if (am->am_modulename != ((void*)0))
  free(am->am_modulename);
 if (am->am_arg_buffer != ((void*)0))
  free(am->am_arg_buffer);
 if (am->am_argv != ((void*)0))
  free(am->am_argv);
}
