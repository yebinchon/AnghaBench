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
struct TYPE_2__ {int (* write_memory ) (int /*<<< orphan*/ ,char*,int) ;} ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_1__* the_target ; 

int
FUNC5 (CORE_ADDR memaddr, const char *myaddr, int len)
{
  /* Lacking cleanups, there is some potential for a memory leak if the
     write fails and we go through error().  Make sure that no more than
     one buffer is ever pending by making BUFFER static.  */
  static char *buffer = 0;
  int res;

  if (buffer != NULL)
    FUNC1 (buffer);

  buffer = FUNC2 (len);
  FUNC3 (buffer, myaddr, len);
  FUNC0 (memaddr, buffer, len);
  res = (*the_target->write_memory) (memaddr, buffer, len);
  FUNC1 (buffer);
  buffer = NULL;

  return res;
}