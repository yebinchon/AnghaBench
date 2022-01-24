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
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct remote_state* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  remote_desc ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static void
FUNC9 (char *args, int from_tty)
{
  struct remote_state *rs = FUNC2 ();
  char *buf = FUNC0 (rs->remote_packet_size);

  if (args)
    FUNC1 ("Argument given to \"detach\" when remotely debugging.");

  /* Tell the remote target to detach.  */
  FUNC6 (buf, "D");
  FUNC4 (buf, (rs->remote_packet_size));

  /* Unregister the file descriptor from the event loop. */
  if (FUNC7 ())
    FUNC5 (remote_desc, NULL, 0);

  FUNC8 ();
  if (from_tty)
    FUNC3 ("Ending remote debugging.\n");
}