#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inferior_environ ; 
 int /*<<< orphan*/  orig_path ; 
 int /*<<< orphan*/  path_var_name ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

void 
FUNC2 (void)
{
  char *env;

  /* We want original execution path to reset to, if desired later.  */
  env = FUNC0 (inferior_environ, path_var_name);

  /* Can be null if path is not set.  */
  if (!env)
    env = "";
  orig_path = FUNC1 (env);
}