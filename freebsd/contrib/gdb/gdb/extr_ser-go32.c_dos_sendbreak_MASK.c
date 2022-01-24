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
struct dos_ttystate {int dummy; } ;

/* Variables and functions */
 unsigned char CFCR_SBREAK ; 
 int RAWHZ ; 
 int /*<<< orphan*/  com_cfcr ; 
 unsigned char FUNC0 (struct dos_ttystate volatile*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dos_ttystate volatile*,int /*<<< orphan*/ ,unsigned char) ; 
 struct dos_ttystate* ports ; 
 long FUNC2 () ; 

__attribute__((used)) static int
FUNC3 (struct serial *scb)
{
  volatile struct dos_ttystate *port = &ports[scb->fd];
  unsigned char cfcr;
  long then;

  cfcr = FUNC0 (port, com_cfcr);
  FUNC1 (port, com_cfcr, cfcr | CFCR_SBREAK);

  /* 0.25 sec delay */
  then = FUNC2 () + RAWHZ / 4;
  while ((FUNC2 () - then) < 0)
    continue;

  FUNC1 (port, com_cfcr, cfcr);
  return 0;
}