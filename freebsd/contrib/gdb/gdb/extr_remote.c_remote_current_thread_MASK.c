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
typedef  int /*<<< orphan*/  ptid_t ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 struct remote_state* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static ptid_t
FUNC6 (ptid_t oldpid)
{
  struct remote_state *rs = FUNC1 ();
  char *buf = FUNC0 (rs->remote_packet_size);

  FUNC4 ("qC");
  FUNC2 (buf, (rs->remote_packet_size), 0);
  if (buf[0] == 'Q' && buf[1] == 'C')
    return FUNC3 (FUNC5 (&buf[2], NULL, 16));
  else
    return oldpid;
}