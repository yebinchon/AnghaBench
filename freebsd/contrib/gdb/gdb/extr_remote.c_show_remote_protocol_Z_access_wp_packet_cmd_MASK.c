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
struct cmd_list_element {int dummy; } ;

/* Variables and functions */
 size_t Z_PACKET_ACCESS_WP ; 
 int /*<<< orphan*/ * remote_protocol_Z ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC1 (char *args, int from_tty,
					     struct cmd_list_element *c)
{
  FUNC0 (&remote_protocol_Z[Z_PACKET_ACCESS_WP]);
}