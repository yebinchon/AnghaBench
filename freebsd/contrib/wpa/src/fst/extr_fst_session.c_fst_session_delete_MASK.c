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
struct fst_session {int /*<<< orphan*/  global_sessions_lentry; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct fst_session*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  on_session_removed ; 
 int /*<<< orphan*/  FUNC3 (struct fst_session*) ; 

void FUNC4(struct fst_session *s)
{
	FUNC2(MSG_INFO, "Session %u deleted", s->id);
	FUNC0(&s->global_sessions_lentry);
	FUNC1(on_session_removed, s);
	FUNC3(s);
}