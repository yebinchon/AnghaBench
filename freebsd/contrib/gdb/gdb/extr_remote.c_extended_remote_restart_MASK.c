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
struct remote_state {int /*<<< orphan*/  remote_packet_size; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 struct remote_state* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5 (void)
{
  struct remote_state *rs = FUNC1 ();
  char *buf = FUNC0 (rs->remote_packet_size);

  /* Send the restart command; for reasons I don't understand the
     remote side really expects a number after the "R".  */
  buf[0] = 'R';
  FUNC4 (&buf[1], "%x", 0);
  FUNC3 (buf);

  /* Now query for status so this looks just like we restarted
     gdbserver from scratch.  */
  FUNC3 ("?");
  FUNC2 (buf, (rs->remote_packet_size), 0);
}