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
struct unicx {int /*<<< orphan*/  pnni; } ;
struct uni_call_proc {int /*<<< orphan*/  unrec; int /*<<< orphan*/  notify; int /*<<< orphan*/  epref; int /*<<< orphan*/  connid; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UNI_IE_CONNID ; 
 int /*<<< orphan*/  UNI_IE_EPREF ; 
 int /*<<< orphan*/  UNI_IE_NOTIFY ; 
 int /*<<< orphan*/  UNI_IE_UNREC ; 
 int FUNC1 (int /*<<< orphan*/ ,union uni_ieall*,struct unicx*) ; 

__attribute__((used)) static int
FUNC2(struct uni_call_proc *m, struct unicx *cx)
{
	int ret = 0;

	ret |= FUNC1(UNI_IE_CONNID, (union uni_ieall *)&m->connid, cx);
	ret |= FUNC1(UNI_IE_EPREF, (union uni_ieall *)&m->epref, cx);
	if(!(!cx->pnni))
		ret |= FUNC0(m->notify);
	else
		ret |= FUNC1(UNI_IE_NOTIFY, (union uni_ieall *)&m->notify, cx);
	ret |= FUNC1(UNI_IE_UNREC, (union uni_ieall *)&m->unrec, cx);

	return ret;
}