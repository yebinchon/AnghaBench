#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_2__ {int /*<<< orphan*/  llt_ms; } ;
struct fst_session {int /*<<< orphan*/  global_sessions_lentry; scalar_t__ id; TYPE_1__ data; int /*<<< orphan*/  state; struct fst_group* group; } ;
struct fst_group {int dummy; } ;

/* Variables and functions */
 scalar_t__ FST_INVALID_SESSION_ID ; 
 int /*<<< orphan*/  FST_LLT_MS_DEFAULT ; 
 int /*<<< orphan*/  FST_SESSION_STATE_INITIAL ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct fst_session*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  global_sessions_list ; 
 int /*<<< orphan*/  on_session_added ; 
 struct fst_session* FUNC4 (int) ; 

struct fst_session * FUNC5(struct fst_group *g)
{
	struct fst_session *s;
	u32 id;

	id = FUNC2();
	if (id == FST_INVALID_SESSION_ID) {
		FUNC3(MSG_ERROR, "Cannot assign new session ID");
		return NULL;
	}

	s = FUNC4(sizeof(*s));
	if (!s) {
		FUNC3(MSG_ERROR, "Cannot allocate new session object");
		return NULL;
	}

	s->id = id;
	s->group = g;
	s->state = FST_SESSION_STATE_INITIAL;

	s->data.llt_ms = FST_LLT_MS_DEFAULT;

	FUNC3(MSG_INFO, "Session %u created", s->id);

	FUNC0(&global_sessions_list, &s->global_sessions_lentry);

	FUNC1(on_session_added, s);

	return s;
}