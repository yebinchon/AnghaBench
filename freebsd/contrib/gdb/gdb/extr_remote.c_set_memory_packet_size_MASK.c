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
struct memory_packet_config {int fixed_p; long size; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 long MAX_REMOTE_PACKET_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,long) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 long FUNC3 (char*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4 (char *args, struct memory_packet_config *config)
{
  int fixed_p = config->fixed_p;
  long size = config->size;
  if (args == NULL)
    FUNC0 ("Argument required (integer, `fixed' or `limited').");
  else if (FUNC2 (args, "hard") == 0
      || FUNC2 (args, "fixed") == 0)
    fixed_p = 1;
  else if (FUNC2 (args, "soft") == 0
	   || FUNC2 (args, "limit") == 0)
    fixed_p = 0;
  else
    {
      char *end;
      size = FUNC3 (args, &end, 0);
      if (args == end)
	FUNC0 ("Invalid %s (bad syntax).", config->name);
#if 0
      /* Instead of explicitly capping the size of a packet to
         MAX_REMOTE_PACKET_SIZE or dissallowing it, the user is
         instead allowed to set the size to something arbitrarily
         large. */
      if (size > MAX_REMOTE_PACKET_SIZE)
	error ("Invalid %s (too large).", config->name);
#endif
    }
  /* Extra checks? */
  if (fixed_p && !config->fixed_p)
    {
      if (! FUNC1 ("The target may not be able to correctly handle a %s\n"
		   "of %ld bytes. Change the packet size? ",
		   config->name, size))
	FUNC0 ("Packet size not changed.");
    }
  /* Update the config. */
  config->fixed_p = fixed_p;
  config->size = size;
}