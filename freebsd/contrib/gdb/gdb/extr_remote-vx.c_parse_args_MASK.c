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
struct TYPE_3__ {int arg_array_len; char** arg_array_val; } ;
typedef  TYPE_1__ arg_array ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char,int) ; 
 char* FUNC2 (char*,int) ; 
 char* FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void
FUNC5 (char *arg_string, arg_array *arg_struct)
{
  int arg_count = 0;	/* number of arguments */
  int arg_index = 0;
  char *p0;

  FUNC1 ((char *) arg_struct, '\0', sizeof (arg_array));

  /* first count how many arguments there are */

  p0 = arg_string;
  while (*p0 != '\0')
    {
      if (*(p0 = FUNC3 (p0)) == '\0')
	break;
      p0 = FUNC0 (p0);
      arg_count++;
    }

  arg_struct->arg_array_len = arg_count;
  arg_struct->arg_array_val = (char **) FUNC4 ((arg_count + 1)
						 * sizeof (char *));

  /* now copy argument strings into arg_struct.  */

  while (*(arg_string = FUNC3 (arg_string)))
    {
      p0 = FUNC0 (arg_string);
      arg_struct->arg_array_val[arg_index++] = FUNC2 (arg_string,
							   p0 - arg_string);
      arg_string = p0;
    }

  arg_struct->arg_array_val[arg_count] = NULL;
}