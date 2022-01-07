
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {int dummy; } ;


 int add_com (char*,int ,int ,char*) ;
 int add_info (char*,int ,char*) ;
 struct cmd_list_element* add_set_cmd (char*,int ,int ,char*,char*,int *) ;
 int add_show_from_set (struct cmd_list_element*,int *) ;
 int auto_solib_add ;
 int class_files ;
 int class_support ;
 int filename_completer ;
 int gdb_sysroot ;
 int info_sharedlibrary_command ;
 int no_shared_libraries ;
 int reload_shared_libraries ;
 int set_cmd_cfunc (struct cmd_list_element*,int ) ;
 int set_cmd_completer (struct cmd_list_element*,int ) ;
 int setlist ;
 int sharedlibrary_command ;
 int showlist ;
 scalar_t__ solib_absolute_prefix ;
 int solib_search_path ;
 int var_boolean ;
 int var_filename ;
 int var_string ;
 scalar_t__ xstrdup (int ) ;

void
_initialize_solib (void)
{
  struct cmd_list_element *c;

  add_com ("sharedlibrary", class_files, sharedlibrary_command,
    "Load shared object library symbols for files matching REGEXP.");
  add_info ("sharedlibrary", info_sharedlibrary_command,
     "Status of loaded shared object libraries.");
  add_com ("nosharedlibrary", class_files, no_shared_libraries,
    "Unload all shared object library symbols.");

  add_show_from_set
    (add_set_cmd ("auto-solib-add", class_support, var_boolean,
    (char *) &auto_solib_add,
    "Set autoloading of shared library symbols.\nIf \"on\", symbols from all shared object libraries will be loaded\nautomatically when the inferior begins execution, when the dynamic linker\ninforms gdb that a new library has been loaded, or when attaching to the\ninferior.  Otherwise, symbols must be loaded manually, using `sharedlibrary'.",




    &setlist),
     &showlist);

  c = add_set_cmd ("solib-absolute-prefix", class_support, var_filename,
     (char *) &solib_absolute_prefix,
     "Set prefix for loading absolute shared library symbol files.\nFor other (relative) files, you can add values using `set solib-search-path'.",

     &setlist);
  add_show_from_set (c, &showlist);
  set_cmd_cfunc (c, reload_shared_libraries);
  set_cmd_completer (c, filename_completer);



  solib_absolute_prefix = xstrdup (gdb_sysroot);

  c = add_set_cmd ("solib-search-path", class_support, var_string,
     (char *) &solib_search_path,
     "Set the search path for loading non-absolute shared library symbol files.\nThis takes precedence over the environment variables PATH and LD_LIBRARY_PATH.",

     &setlist);
  add_show_from_set (c, &showlist);
  set_cmd_cfunc (c, reload_shared_libraries);
  set_cmd_completer (c, filename_completer);
}
