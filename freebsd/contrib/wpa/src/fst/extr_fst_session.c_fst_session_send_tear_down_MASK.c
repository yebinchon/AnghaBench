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
typedef  int /*<<< orphan*/  td ;
struct fst_tear_down {int /*<<< orphan*/  fsts_id; int /*<<< orphan*/  action; } ;
struct TYPE_2__ {int /*<<< orphan*/  fsts_id; int /*<<< orphan*/ * new_iface; int /*<<< orphan*/ * old_iface; } ;
struct fst_session {TYPE_1__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FST_ACTION_TEAR_DOWN ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fst_session*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct fst_session*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct fst_session*) ; 
 int FUNC4 (struct fst_session*,int /*<<< orphan*/ ,struct fst_tear_down*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct fst_tear_down*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct fst_session *s)
{
	struct fst_tear_down td;
	int res;

	if (!FUNC3(s)) {
		FUNC1(s, MSG_ERROR, "No FST setup to tear down");
		return -1;
	}

	FUNC0(s->data.old_iface != NULL);
	FUNC0(s->data.new_iface != NULL);

	FUNC6(&td, 0, sizeof(td));

	td.action = FST_ACTION_TEAR_DOWN;
	td.fsts_id = FUNC5(s->data.fsts_id);

	res = FUNC4(s, TRUE, &td, sizeof(td), NULL);
	if (!res)
		FUNC2(s, TRUE, MSG_INFO, "FST TearDown sent");
	else
		FUNC2(s, TRUE, MSG_ERROR,
				  "failed to send FST TearDown");

	return res;
}