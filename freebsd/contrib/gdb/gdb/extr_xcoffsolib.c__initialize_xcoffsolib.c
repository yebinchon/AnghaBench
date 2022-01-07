
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_com (char*,int ,int ,char*) ;
 int add_info (char*,int ,char*) ;
 int add_set_cmd (char*,int ,int ,char*,char*,int *) ;
 int add_show_from_set (int ,int *) ;
 int auto_solib_add ;
 int class_files ;
 int class_support ;
 int setlist ;
 int sharedlibrary_command ;
 int showlist ;
 int solib_info ;
 int var_boolean ;

void
_initialize_xcoffsolib (void)
{
  add_com ("sharedlibrary", class_files, sharedlibrary_command,
    "Load shared object library symbols for files matching REGEXP.");
  add_info ("sharedlibrary", solib_info,
     "Status of loaded shared object libraries");

  add_show_from_set
    (add_set_cmd ("auto-solib-add", class_support, var_boolean,
    (char *) &auto_solib_add,
    "Set autoloading of shared library symbols.\nIf \"on\", symbols from all shared object libraries will be loaded\nautomatically when the inferior begins execution, when the dynamic linker\ninforms gdb that a new library has been loaded, or when attaching to the\ninferior.  Otherwise, symbols must be loaded manually, using `sharedlibrary'.",




    &setlist),
     &showlist);
}
