
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {int dummy; } ;


 int TYPE_CODE_ERROR ;
 int add_com (char*,int ,int ,char*) ;
 int add_info (char*,int ,char*) ;
 int builtin_type_error ;
 int class_breakpoint ;
 int class_info ;
 scalar_t__ dbx_commands ;
 int functions_info ;
 int init_type (int ,int ,int ,char*,struct objfile*) ;
 int rbreak_command ;
 int sources_info ;
 int types_info ;
 int variables_info ;
 scalar_t__ xdb_commands ;

void
_initialize_symtab (void)
{
  add_info ("variables", variables_info,
  "All global and static variable names, or those matching REGEXP.");
  if (dbx_commands)
    add_com ("whereis", class_info, variables_info,
  "All global and static variable names, or those matching REGEXP.");

  add_info ("functions", functions_info,
     "All function names, or those matching REGEXP.");
  add_info ("types", types_info,
     "All type names, or those matching REGEXP.");

  add_info ("sources", sources_info,
     "Source files in the program.");

  add_com ("rbreak", class_breakpoint, rbreak_command,
    "Set a breakpoint for all functions matching REGEXP.");

  if (xdb_commands)
    {
      add_com ("lf", class_info, sources_info, "Source files in the program");
      add_com ("lg", class_info, variables_info,
  "All global and static variable names, or those matching REGEXP.");
    }


  builtin_type_error = init_type (TYPE_CODE_ERROR, 0, 0,
      "<unknown type>", (struct objfile *) ((void*)0));
}
