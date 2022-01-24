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
typedef  int uid_t ;
struct passwd {int pw_uid; int pw_gid; void* pw_name; } ;

/* Variables and functions */
 struct passwd PwEntry ; 
 void* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct passwd*,int /*<<< orphan*/ ,int) ; 

struct passwd *
FUNC2(uid_t uid)
{
	struct passwd *p = &PwEntry;

	FUNC1(p, 0, sizeof(*p));
	if (uid == 0) {
		p->pw_name = FUNC0("root");
		p->pw_uid = 0;
		p->pw_gid = 0;
	} else if (uid == 100) {
		p->pw_name = FUNC0("test");
		p->pw_uid = 100;
		p->pw_gid = 100;
	} else
		p = NULL;

	return p;
}