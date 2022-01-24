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
struct serial {size_t fd; } ;
struct dos_ttystate {int baudrate; } ;

/* Variables and functions */
 unsigned char CFCR_DLAB ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  com_cfcr ; 
 int /*<<< orphan*/  com_dlbh ; 
 int /*<<< orphan*/  com_dlbl ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  gdb_stderr ; 
 unsigned char FUNC4 (struct dos_ttystate*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dos_ttystate*,int /*<<< orphan*/ ,unsigned char) ; 
 struct dos_ttystate* ports ; 

__attribute__((used)) static int
FUNC6 (struct serial *scb, int rate)
{
  struct dos_ttystate *port = &ports[scb->fd];

  if (port->baudrate != rate)
    {
      int x;
      unsigned char cfcr;

      x = FUNC1 (rate);
      if (x <= 0)
	{
	  FUNC3 (gdb_stderr, "%d: impossible baudrate\n", rate);
	  errno = EINVAL;
	  return -1;
	}

      FUNC0 ();
      cfcr = FUNC4 (port, com_cfcr);

      FUNC5 (port, com_cfcr, CFCR_DLAB);
      FUNC5 (port, com_dlbl, x & 0xff);
      FUNC5 (port, com_dlbh, x >> 8);
      FUNC5 (port, com_cfcr, cfcr);
      port->baudrate = rate;
      FUNC2 ();
    }

  return 0;
}