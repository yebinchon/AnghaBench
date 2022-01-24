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
 unsigned char CFCR_STOPB ; 
#define  SERIAL_1_AND_A_HALF_STOPBITS 130 
#define  SERIAL_1_STOPBITS 129 
#define  SERIAL_2_STOPBITS 128 
 int /*<<< orphan*/  com_cfcr ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 unsigned char FUNC2 (struct dos_ttystate*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dos_ttystate*,int /*<<< orphan*/ ,unsigned char) ; 
 struct dos_ttystate* ports ; 

__attribute__((used)) static int
FUNC4 (struct serial *scb, int num)
{
  struct dos_ttystate *port = &ports[scb->fd];
  unsigned char cfcr;

  FUNC0 ();
  cfcr = FUNC2 (port, com_cfcr);

  switch (num)
    {
    case SERIAL_1_STOPBITS:
      FUNC3 (port, com_cfcr, cfcr & ~CFCR_STOPB);
      break;
    case SERIAL_1_AND_A_HALF_STOPBITS:
    case SERIAL_2_STOPBITS:
      FUNC3 (port, com_cfcr, cfcr | CFCR_STOPB);
      break;
    default:
      FUNC1 ();
      return 1;
    }
  FUNC1 ();

  return 0;
}