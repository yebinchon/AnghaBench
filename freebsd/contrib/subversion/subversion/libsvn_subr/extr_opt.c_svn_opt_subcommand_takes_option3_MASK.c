#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int* valid_options; } ;
typedef  TYPE_1__ svn_opt_subcommand_desc2_t ;
typedef  int /*<<< orphan*/  svn_boolean_t ;
typedef  size_t apr_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 size_t SVN_OPT_MAX_OPTIONS ; 
 int /*<<< orphan*/  TRUE ; 

svn_boolean_t
FUNC0(const svn_opt_subcommand_desc2_t *command,
                                 int option_code,
                                 const int *global_options)
{
  apr_size_t i;

  for (i = 0; i < SVN_OPT_MAX_OPTIONS; i++)
    if (command->valid_options[i] == option_code)
      return TRUE;

  if (global_options)
    for (i = 0; global_options[i]; i++)
      if (global_options[i] == option_code)
        return TRUE;

  return FALSE;
}