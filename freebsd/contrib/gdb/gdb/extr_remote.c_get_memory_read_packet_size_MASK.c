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
struct remote_state {long remote_packet_size; } ;

/* Variables and functions */
 long FUNC0 (int /*<<< orphan*/ *) ; 
 struct remote_state* FUNC1 () ; 
 int /*<<< orphan*/  memory_read_packet_config ; 

__attribute__((used)) static long
FUNC2 (void)
{
  struct remote_state *rs = FUNC1 ();
  long size = FUNC0 (&memory_read_packet_config);
  /* FIXME: cagney/1999-11-07: Functions like getpkt() need to get an
     extra buffer size argument before the memory read size can be
     increased beyond (rs->remote_packet_size). */
  if (size > (rs->remote_packet_size))
    size = (rs->remote_packet_size);
  return size;
}