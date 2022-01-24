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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  remote_desc ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,unsigned char) ; 

__attribute__((used)) static void
FUNC3 (FILE *fp)
{
  int fromlog;
  unsigned char fromgdb;

  if ((fromlog = FUNC0 (fp)) != ' ')
    {
      FUNC2 (fp, "Sync error during gdb read of leading blank", ' ',
		  fromlog);
    }
  do
    {
      fromlog = FUNC0 (fp);
      if (fromlog == EOL)
	{
	  break;
	}
      FUNC1 (remote_desc, &fromgdb, 1);
    }
  while (fromlog == fromgdb);
  if (fromlog != EOL)
    {
      FUNC2 (fp, "Sync error during read of gdb packet", fromlog,
		  fromgdb);
    }
}