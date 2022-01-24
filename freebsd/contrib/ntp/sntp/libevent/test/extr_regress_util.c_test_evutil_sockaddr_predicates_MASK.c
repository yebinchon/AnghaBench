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
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
struct sa_pred_ent {scalar_t__ is_loopback; scalar_t__ parse; } ;
typedef  int /*<<< orphan*/  ss ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (scalar_t__,struct sockaddr*,int*) ; 
 scalar_t__ FUNC2 (struct sockaddr*) ; 
 struct sa_pred_ent* sa_pred_entries ; 

__attribute__((used)) static void
FUNC3(void *ptr)
{
	struct sockaddr_storage ss;
	int r, i;

	for (i=0; sa_pred_entries[i].parse; ++i) {
		struct sa_pred_ent *ent = &sa_pred_entries[i];
		int len = sizeof(ss);

		r = FUNC1(ent->parse, (struct sockaddr*)&ss, &len);

		if (r<0) {
			FUNC0(("Couldn't parse %s!", ent->parse));
			continue;
		}

		/* sockaddr_is_loopback */
		if (ent->is_loopback != FUNC2((struct sockaddr*)&ss)) {
			FUNC0(("evutil_sockaddr_loopback(%s) not as expected",
				ent->parse));
		}
	}
}