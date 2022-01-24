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
typedef  int /*<<< orphan*/  sysevent_t ;
struct sysevent {int /*<<< orphan*/  se_pub; int /*<<< orphan*/  se_subclass; int /*<<< orphan*/  se_class; int /*<<< orphan*/ * se_nvl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int SE_SLEEP ; 
 struct sysevent* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

sysevent_t *
FUNC3(char *class, char *subclass, char *pub, int flag)
{
	struct sysevent *ev;

	FUNC0(class != NULL);
	FUNC0(subclass != NULL);
	FUNC0(pub != NULL);
	FUNC0(flag == SE_SLEEP);

	ev = FUNC1(sizeof(*ev), KM_SLEEP);
	ev->se_nvl = NULL;
	FUNC2(ev->se_class, class, sizeof(ev->se_class));
	FUNC2(ev->se_subclass, subclass, sizeof(ev->se_subclass));
	FUNC2(ev->se_pub, pub, sizeof(ev->se_pub));

	return ((sysevent_t *)ev);
}