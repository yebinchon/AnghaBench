#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  void* time_t ;
struct val_anchors {int /*<<< orphan*/  lock; TYPE_1__* autr; } ;
struct trust_anchor {int /*<<< orphan*/  lock; TYPE_2__* autr; } ;
struct TYPE_4__ {void* retry_time; void* query_interval; scalar_t__ query_failed; int /*<<< orphan*/  pnode; void* next_probe_time; void* last_success; void* last_queried; } ;
struct TYPE_3__ {int /*<<< orphan*/  probe; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct trust_anchor* FUNC3 (struct val_anchors*,char*) ; 
 scalar_t__ FUNC4 (char*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct trust_anchor*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC8(char* line, struct val_anchors* anchors, 
	struct trust_anchor** anchor)
{
	struct trust_anchor* tp = *anchor;
	int r = 0;
	if(FUNC7(line, ";;id: ", 6) == 0) {
		*anchor = FUNC3(anchors, line+6);
		if(!*anchor) return -1;
		else return 1;
	} else if(FUNC7(line, ";;REVOKED", 9) == 0) {
		if(tp) {
			FUNC2("REVOKED statement must be at start of file");
			return -1;
		}
		return 2;
	} else if(FUNC7(line, ";;last_queried: ", 16) == 0) {
		if(!tp) return -1;
		FUNC0(&tp->lock);
		tp->autr->last_queried = (time_t)FUNC4(line+16, &r);
		FUNC1(&tp->lock);
	} else if(FUNC7(line, ";;last_success: ", 16) == 0) {
		if(!tp) return -1;
		FUNC0(&tp->lock);
		tp->autr->last_success = (time_t)FUNC4(line+16, &r);
		FUNC1(&tp->lock);
	} else if(FUNC7(line, ";;next_probe_time: ", 19) == 0) {
		if(!tp) return -1;
		FUNC0(&anchors->lock);
		FUNC0(&tp->lock);
		(void)FUNC5(&anchors->autr->probe, tp);
		tp->autr->next_probe_time = (time_t)FUNC4(line+19, &r);
		(void)FUNC6(&anchors->autr->probe, &tp->autr->pnode);
		FUNC1(&tp->lock);
		FUNC1(&anchors->lock);
	} else if(FUNC7(line, ";;query_failed: ", 16) == 0) {
		if(!tp) return -1;
		FUNC0(&tp->lock);
		tp->autr->query_failed = (uint8_t)FUNC4(line+16, &r);
		FUNC1(&tp->lock);
	} else if(FUNC7(line, ";;query_interval: ", 18) == 0) {
		if(!tp) return -1;
		FUNC0(&tp->lock);
		tp->autr->query_interval = (time_t)FUNC4(line+18, &r);
		FUNC1(&tp->lock);
	} else if(FUNC7(line, ";;retry_time: ", 14) == 0) {
		if(!tp) return -1;
		FUNC0(&tp->lock);
		tp->autr->retry_time = (time_t)FUNC4(line+14, &r);
		FUNC1(&tp->lock);
	}
	return r;
}