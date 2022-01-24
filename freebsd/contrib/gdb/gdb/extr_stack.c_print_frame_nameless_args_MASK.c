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
struct ui_file {int dummy; } ;
struct frame_info {int dummy; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  QUIT ; 
 int /*<<< orphan*/  FUNC0 (struct ui_file*,char*,...) ; 
 scalar_t__ FUNC1 (struct frame_info*) ; 
 long FUNC2 (scalar_t__,int) ; 

__attribute__((used)) static void
FUNC3 (struct frame_info *fi, long start, int num,
			   int first, struct ui_file *stream)
{
  int i;
  CORE_ADDR argsaddr;
  long arg_value;

  for (i = 0; i < num; i++)
    {
      QUIT;
      argsaddr = FUNC1 (fi);
      if (!argsaddr)
	return;
      arg_value = FUNC2 (argsaddr + start, sizeof (int));
      if (!first)
	FUNC0 (stream, ", ");
      FUNC0 (stream, "%ld", arg_value);
      first = 0;
      start += sizeof (int);
    }
}