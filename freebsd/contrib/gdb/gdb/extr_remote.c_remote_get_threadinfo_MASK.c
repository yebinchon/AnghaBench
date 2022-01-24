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
typedef  int /*<<< orphan*/  threadref ;
struct remote_state {int /*<<< orphan*/  remote_packet_size; } ;
struct gdb_ext_thread_info {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 struct remote_state* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (char*,int /*<<< orphan*/ *,struct gdb_ext_thread_info*) ; 

__attribute__((used)) static int
FUNC6 (threadref *threadid, int fieldset,	/* TAG mask */
		       struct gdb_ext_thread_info *info)
{
  struct remote_state *rs = FUNC1 ();
  int result;
  char *threadinfo_pkt = FUNC0 (rs->remote_packet_size);

  FUNC3 (threadinfo_pkt, fieldset, threadid);
  FUNC4 (threadinfo_pkt);
  FUNC2 (threadinfo_pkt, (rs->remote_packet_size), 0);
  result = FUNC5 (threadinfo_pkt + 2, threadid,
					       info);
  return result;
}