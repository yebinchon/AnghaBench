#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct symtab_and_line {TYPE_1__* symtab; int /*<<< orphan*/  line; } ;
typedef  enum mi_cmd_result { ____Placeholder_mi_cmd_result } mi_cmd_result ;
struct TYPE_2__ {int /*<<< orphan*/ * fullname; int /*<<< orphan*/ * filename; } ;

/* Variables and functions */
 int MI_CMD_DONE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct symtab_and_line FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char**) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uiout ; 

enum mi_cmd_result
FUNC7(char *command, char **argv, int argc)
{
  struct symtab_and_line st;
  int optind = 0;
  char *optarg;
  
  if ( !FUNC2("mi_cmd_file_list_exec_source_file", argc, argv) )
    FUNC0 ("mi_cmd_file_list_exec_source_file: Usage: No args");

  
  /* Set the default file and line, also get them */
  FUNC3();
  st = FUNC1();

  /* We should always get a symtab. 
     Apparently, filename does not need to be tested for NULL.
     The documentation in symtab.h suggests it will always be correct */
  if (!st.symtab)
    FUNC0 ("mi_cmd_file_list_exec_source_file: No symtab");

  /* Extract the fullname if it is not known yet */
  if (st.symtab->fullname == NULL)
    FUNC4 (st.symtab);

  /* We may not be able to open the file (not available). */
  if (st.symtab->fullname == NULL)
    FUNC0 ("mi_cmd_file_list_exec_source_file: File not found");

  /* Print to the user the line, filename and fullname */
  FUNC5 (uiout, "line", st.line);
  FUNC6 (uiout, "file", st.symtab->filename);
  FUNC6 (uiout, "fullname", st.symtab->fullname);

  return MI_CMD_DONE;
}