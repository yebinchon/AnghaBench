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

/* Variables and functions */
 int /*<<< orphan*/  immediate_quit ; 
 int next_msg_id ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  sds_desc ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int
FUNC5 (void *dummy)
{
  int c;
  unsigned char buf[200];

  immediate_quit++;		/* Allow user to interrupt it */

  /* Ack any packet which the remote side has already sent.  */
  FUNC3 (sds_desc, "{#*\r\n", 5);
  FUNC3 (sds_desc, "{#}\r\n", 5);

  while ((c = FUNC1 (1)) >= 0)
    FUNC0 ("%c", c);
  FUNC0 ("\n");

  next_msg_id = 251;

  buf[0] = 26;
  FUNC2 (buf, 1);

  buf[0] = 0;
  FUNC2 (buf, 1);

  immediate_quit--;

  FUNC4 ();		/* Initialize gdb process mechanisms */
  return 1;
}