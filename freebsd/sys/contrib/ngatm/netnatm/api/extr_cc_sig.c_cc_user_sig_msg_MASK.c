#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct uni_msg {int dummy; } ;
struct ccuser {TYPE_1__* cc; } ;
struct ccsig {int dummy; } ;
typedef  enum user_sig { ____Placeholder_user_sig } user_sig ;
struct TYPE_3__ {int /*<<< orphan*/  sigs; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  SIG_USER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct ccsig*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ ,struct ccuser*) ; 
 int /*<<< orphan*/ * cc_user_sigtab ; 
 int /*<<< orphan*/  link ; 
 struct ccsig* FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,struct ccuser*,int /*<<< orphan*/ ,int,struct uni_msg*,int /*<<< orphan*/ ) ; 

int
FUNC3(struct ccuser *user, enum user_sig sig, struct uni_msg *msg)
{
	struct ccsig *s;

	s = FUNC2(user->cc, SIG_USER, user, msg != NULL, sig, msg, 0);
	if (s == NULL)
		return (ENOMEM);
	FUNC0(&user->cc->sigs, s, link);
	FUNC1(user->cc, "queuing sig %s to user %p", cc_user_sigtab[sig],
	    user);
	return (0);
}