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
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  remote_desc ; 

__attribute__((used)) static void
FUNC7 (char *args, int from_tty)
{
  struct remote_state *rs = FUNC2 ();
  char *buf = FUNC0 (rs->remote_packet_size);

  if (!remote_desc)
    FUNC1 ("command can only be used with remote target");

  if (!args)
    FUNC1 ("remote-packet command requires packet text as argument");

  FUNC6 ("sending: ");
  FUNC4 (args);
  FUNC6 ("\n");
  FUNC5 (args);

  FUNC3 (buf, (rs->remote_packet_size), 0);
  FUNC6 ("received: ");
  FUNC4 (buf);
  FUNC6 ("\n");
}