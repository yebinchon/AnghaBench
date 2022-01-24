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
 int RAWHZ ; 
 int SERIAL_TIMEOUT ; 
 int FUNC0 (struct dos_ttystate*) ; 
 struct dos_ttystate* ports ; 
 long FUNC1 () ; 

__attribute__((used)) static int
FUNC2 (struct serial *scb, int timeout)
{
  struct dos_ttystate *port = &ports[scb->fd];
  long then;
  int c;

  then = FUNC1 () + (timeout * RAWHZ);
  while ((c = FUNC0 (port)) < 0)
    {
      if (timeout >= 0 && (FUNC1 () - then) >= 0)
	return SERIAL_TIMEOUT;
    }

  return c;
}