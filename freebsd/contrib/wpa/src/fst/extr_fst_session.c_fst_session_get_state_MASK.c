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
struct fst_session {int state; } ;
typedef  enum fst_session_state { ____Placeholder_fst_session_state } fst_session_state ;

/* Variables and functions */

enum fst_session_state FUNC0(struct fst_session *s)
{
	return s->state;
}