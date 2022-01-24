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
 int MAGIC_NULL_PID ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int continue_thread ; 
 int general_thread ; 
 struct remote_state* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

__attribute__((used)) static void
FUNC5 (int th, int gen)
{
  struct remote_state *rs = FUNC1 ();
  char *buf = FUNC0 (rs->remote_packet_size);
  int state = gen ? general_thread : continue_thread;

  if (state == th)
    return;

  buf[0] = 'H';
  buf[1] = gen ? 'g' : 'c';
  if (th == MAGIC_NULL_PID)
    {
      buf[2] = '0';
      buf[3] = '\0';
    }
  else if (th < 0)
    FUNC4 (&buf[2], "-%x", -th);
  else
    FUNC4 (&buf[2], "%x", th);
  FUNC3 (buf);
  FUNC2 (buf, (rs->remote_packet_size), 0);
  if (gen)
    general_thread = th;
  else
    continue_thread = th;
}