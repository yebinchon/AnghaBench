
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {int dummy; } ;


 int RE_SYNTAX_GREP ;
 struct cmd_list_element* add_cmd (char*,int ,int ,char*,int *) ;
 int add_com (char*,int ,int ,char*) ;
 int add_com_alias (char*,char*,int ,int ) ;
 int add_info (char*,int ,char*) ;
 int add_set_cmd (char*,int ,int ,char*,char*,int *) ;
 int add_show_from_set (int ,int *) ;
 int class_files ;
 int class_support ;
 int cmdlist ;
 char* concat (char*,char*,int *) ;
 scalar_t__ current_source_symtab ;
 scalar_t__ dbx_commands ;
 int directory_command ;
 int filename_completer ;
 int forward_search_command ;
 int init_source_path () ;
 int line_info ;
 int lines_to_list ;
 int no_class ;
 int re_set_syntax (int ) ;
 int reverse_search_command ;
 int set_cmd_completer (struct cmd_list_element*,int ) ;
 int setlist ;
 int show_directories ;
 int showlist ;
 int source_info ;
 int var_uinteger ;
 scalar_t__ xdb_commands ;

void
_initialize_source (void)
{
  struct cmd_list_element *c;
  current_source_symtab = 0;
  init_source_path ();





  re_set_syntax (RE_SYNTAX_GREP);

  c = add_cmd ("directory", class_files, directory_command,
        "Add directory DIR to beginning of search path for source files.\nForget cached info on source file locations and line positions.\nDIR can also be $cwd for the current working directory, or $cdir for the\ndirectory in which the source file was compiled into object code.\nWith no argument, reset the search path to $cdir:$cwd, the default.",




        &cmdlist);

  if (dbx_commands)
    add_com_alias ("use", "directory", class_files, 0);

  set_cmd_completer (c, filename_completer);

  add_cmd ("directories", no_class, show_directories,
    "Current search path for finding source files.\n$cwd in the path means the current working directory.\n$cdir in the path means the compilation directory of the source file.",


    &showlist);

  if (xdb_commands)
    {
      add_com_alias ("D", "directory", class_files, 0);
      add_cmd ("ld", no_class, show_directories,
        "Current search path for finding source files.\n$cwd in the path means the current working directory.\n$cdir in the path means the compilation directory of the source file.",


        &cmdlist);
    }

  add_info ("source", source_info,
     "Information about the current source file.");

  add_info ("line", line_info,
     concat ("Core addresses of the code for a source line.\nLine can be specified as\n  LINENUM, to list around that line in current file,\n  FILE:LINENUM, to list around that line in that file,\n  FUNCTION, to list around beginning of that function,\n  FILE:FUNCTION, to distinguish among like-named static functions.\n", "Default is to describe the last source line that was listed.\n\nThis sets the default address for \"x\" to the line's first instruction\nso that \"x/i\" suffices to start examining the machine code.\nThe address is also stored as the value of \"$_\".", ((void*)0)));
  add_com ("forward-search", class_files, forward_search_command,
    "Search for regular expression (see regex(3)) from last line listed.\nThe matching line number is also stored as the value of \"$_\".");

  add_com_alias ("search", "forward-search", class_files, 0);

  add_com ("reverse-search", class_files, reverse_search_command,
    "Search backward for regular expression (see regex(3)) from last line listed.\nThe matching line number is also stored as the value of \"$_\".");


  if (xdb_commands)
    {
      add_com_alias ("/", "forward-search", class_files, 0);
      add_com_alias ("?", "reverse-search", class_files, 0);
    }

  add_show_from_set
    (add_set_cmd ("listsize", class_support, var_uinteger,
    (char *) &lines_to_list,
    "Set number of source lines gdb will list by default.",
    &setlist),
     &showlist);
}
