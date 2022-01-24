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
struct hardwire_ttystate {int dummy; } ;
typedef  scalar_t__ serial_ttystate ;

/* Variables and functions */
 int FUNC0 (struct serial*,struct hardwire_ttystate*) ; 

__attribute__((used)) static int
FUNC1 (struct serial *scb, serial_ttystate ttystate)
{
  struct hardwire_ttystate *state;

  state = (struct hardwire_ttystate *) ttystate;

  return FUNC0 (scb, state);
}