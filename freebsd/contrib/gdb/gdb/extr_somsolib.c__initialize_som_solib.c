
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_com (char*,int ,int ,char*) ;
 int add_info (char*,int ,char*) ;
 int add_set_cmd (char*,int ,int ,char*,char*,int *) ;
 int add_show_from_set (int ,int *) ;
 int auto_solib_add ;
 int auto_solib_limit ;
 int class_files ;
 int class_support ;
 int setlist ;
 int showlist ;
 int som_sharedlibrary_info_command ;
 int som_solib_restart () ;
 int som_solib_sharedlibrary_command ;
 int var_boolean ;
 int var_zinteger ;

void
_initialize_som_solib (void)
{
  add_com ("sharedlibrary", class_files, som_solib_sharedlibrary_command,
    "Load shared object library symbols for files matching REGEXP.");
  add_info ("sharedlibrary", som_sharedlibrary_info_command,
     "Status of loaded shared object libraries.");

  add_show_from_set
    (add_set_cmd ("auto-solib-add", class_support, var_boolean,
    (char *) &auto_solib_add,
    "Set autoloading of shared library symbols.\nIf \"on\", symbols from all shared object libraries will be loaded\nautomatically when the inferior begins execution, when the dynamic linker\ninforms gdb that a new library has been loaded, or when attaching to the\ninferior.  Otherwise, symbols must be loaded manually, using `sharedlibrary'.",




    &setlist),
     &showlist);

  add_show_from_set
    (add_set_cmd ("auto-solib-limit", class_support, var_zinteger,
    (char *) &auto_solib_limit,
    "Set threshold (in Mb) for autoloading shared library symbols.\nWhen shared library autoloading is enabled, new libraries will be loaded\nonly until the total size of shared library symbols exceeds this\nthreshold in megabytes.  Is ignored when using `sharedlibrary'.",



    &setlist),
     &showlist);
  auto_solib_limit = 100;

  som_solib_restart ();
}
