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
struct ccuser {char* name; struct ccdata* cc; int /*<<< orphan*/  connq; void* uarg; int /*<<< orphan*/  state; } ;
struct ccdata {int log; int /*<<< orphan*/  user_list; } ;

/* Variables and functions */
 int CCLOG_USER_INST ; 
 struct ccuser* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct ccuser*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  USER_NULL ; 
 int /*<<< orphan*/  FUNC3 (struct ccuser*,char*,char const*) ; 
 int /*<<< orphan*/  node_link ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 

struct ccuser *
FUNC5(struct ccdata *cc, void *uarg, const char *name)
{
	struct ccuser *user;

	user = FUNC0(sizeof(*user));
	if (user == NULL)
		return (NULL);

	user->cc = cc;
	user->state = USER_NULL;
	user->uarg = uarg;
	FUNC4(user->name, name, sizeof(user->name));
	user->name[sizeof(user->name) - 1] = '\0';
	FUNC2(&user->connq);
	FUNC1(&cc->user_list, user, node_link);

	if (user->cc->log & CCLOG_USER_INST)
		FUNC3(user, "created with name '%s'", name);

	return (user);
}