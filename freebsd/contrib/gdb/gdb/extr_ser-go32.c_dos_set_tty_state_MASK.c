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
struct serial {int dummy; } ;
struct dos_ttystate {int /*<<< orphan*/  baudrate; } ;
typedef  scalar_t__ serial_ttystate ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct serial*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1 (struct serial *scb, serial_ttystate ttystate)
{
  struct dos_ttystate *state;

  state = (struct dos_ttystate *) ttystate;
  FUNC0 (scb, state->baudrate);
  return 0;
}