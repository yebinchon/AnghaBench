
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd_list_element {int dummy; } ;


 int add_com (char*,int ,int ,char*) ;
 struct cmd_list_element* add_set_cmd (char*,int ,int ,char*,char*,int *) ;
 int add_show_from_set (struct cmd_list_element*,int *) ;
 int asm_demangle ;
 char chars_per_line ;
 int class_support ;
 int demangle ;
 int init_page_info () ;
 char lines_per_page ;
 int pagination_enabled ;
 int pagination_off_command ;
 int pagination_on_command ;
 int set_cmd_sfunc (struct cmd_list_element*,int ) ;
 int set_height_command ;
 int set_width_command ;
 int setlist ;
 int setprintlist ;
 int sevenbit_strings ;
 int showlist ;
 int showprintlist ;
 int var_boolean ;
 int var_uinteger ;
 scalar_t__ xdb_commands ;

void
initialize_utils (void)
{
  struct cmd_list_element *c;

  c = add_set_cmd ("width", class_support, var_uinteger, &chars_per_line,
     "Set number of characters gdb thinks are in a line.",
     &setlist);
  add_show_from_set (c, &showlist);
  set_cmd_sfunc (c, set_width_command);

  c = add_set_cmd ("height", class_support, var_uinteger, &lines_per_page,
     "Set number of lines gdb thinks are in a page.", &setlist);
  add_show_from_set (c, &showlist);
  set_cmd_sfunc (c, set_height_command);

  init_page_info ();

  add_show_from_set
    (add_set_cmd ("demangle", class_support, var_boolean,
    (char *) &demangle,
    "Set demangling of encoded C++/ObjC names when displaying symbols.",
    &setprintlist), &showprintlist);

  add_show_from_set
    (add_set_cmd ("pagination", class_support,
    var_boolean, (char *) &pagination_enabled,
    "Set state of pagination.", &setlist), &showlist);

  if (xdb_commands)
    {
      add_com ("am", class_support, pagination_on_command,
        "Enable pagination");
      add_com ("sm", class_support, pagination_off_command,
        "Disable pagination");
    }

  add_show_from_set
    (add_set_cmd ("sevenbit-strings", class_support, var_boolean,
    (char *) &sevenbit_strings,
    "Set printing of 8-bit characters in strings as \\nnn.",
    &setprintlist), &showprintlist);

  add_show_from_set
    (add_set_cmd ("asm-demangle", class_support, var_boolean,
    (char *) &asm_demangle,
    "Set demangling of C++/ObjC names in disassembly listings.",
    &setprintlist), &showprintlist);
}
