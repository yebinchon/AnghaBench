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
typedef  union uni_ieall {int dummy; } uni_ieall ;
typedef  size_t u_int ;
struct unicx {int /*<<< orphan*/  pnni; } ;
struct uni_alerting {int /*<<< orphan*/  unrec; int /*<<< orphan*/  report; int /*<<< orphan*/  uu; int /*<<< orphan*/ * git; int /*<<< orphan*/  notify; int /*<<< orphan*/  epref; int /*<<< orphan*/  connid; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UNI_IE_CONNID ; 
 int /*<<< orphan*/  UNI_IE_EPREF ; 
 int /*<<< orphan*/  UNI_IE_GIT ; 
 int /*<<< orphan*/  UNI_IE_NOTIFY ; 
 int /*<<< orphan*/  UNI_IE_REPORT ; 
 int /*<<< orphan*/  UNI_IE_UNREC ; 
 int /*<<< orphan*/  UNI_IE_UU ; 
 size_t UNI_NUM_IE_GIT ; 
 int FUNC1 (int /*<<< orphan*/ ,union uni_ieall*,struct unicx*) ; 

__attribute__((used)) static int
FUNC2(struct uni_alerting *m, struct unicx *cx)
{
	int ret = 0;
	u_int i;

	if(!(!cx->pnni))
		ret |= FUNC0(m->connid);
	else
		ret |= FUNC1(UNI_IE_CONNID, (union uni_ieall *)&m->connid, cx);
	ret |= FUNC1(UNI_IE_EPREF, (union uni_ieall *)&m->epref, cx);
	ret |= FUNC1(UNI_IE_NOTIFY, (union uni_ieall *)&m->notify, cx);
	for(i = 0; i < UNI_NUM_IE_GIT ; i++) {
		ret |= FUNC1(UNI_IE_GIT, (union uni_ieall *)&m->git[i], cx);
	}
	if(!(!cx->pnni))
		ret |= FUNC0(m->uu);
	else
		ret |= FUNC1(UNI_IE_UU, (union uni_ieall *)&m->uu, cx);
	if(!(!cx->pnni))
		ret |= FUNC0(m->report);
	else
		ret |= FUNC1(UNI_IE_REPORT, (union uni_ieall *)&m->report, cx);
	ret |= FUNC1(UNI_IE_UNREC, (union uni_ieall *)&m->unrec, cx);

	return ret;
}