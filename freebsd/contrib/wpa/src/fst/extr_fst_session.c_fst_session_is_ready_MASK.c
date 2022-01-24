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
struct fst_session {scalar_t__ state; } ;

/* Variables and functions */
 scalar_t__ FST_SESSION_STATE_SETUP_COMPLETION ; 
 int /*<<< orphan*/  FUNC0 (struct fst_session*) ; 

__attribute__((used)) static int FUNC1(struct fst_session *s)
{
	return s->state == FST_SESSION_STATE_SETUP_COMPLETION &&
		!FUNC0(s);
}