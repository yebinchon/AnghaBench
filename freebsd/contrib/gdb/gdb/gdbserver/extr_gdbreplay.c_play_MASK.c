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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOL ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  remote_desc ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC3 (FILE *fp)
{
  int fromlog;
  char ch;

  if ((fromlog = FUNC0 (fp)) != ' ')
    {
      FUNC1 (fp, "Sync error skipping blank during write to gdb", ' ',
		  fromlog);
    }
  while ((fromlog = FUNC0 (fp)) != EOL)
    {
      ch = fromlog;
      FUNC2 (remote_desc, &ch, 1);
    }
}