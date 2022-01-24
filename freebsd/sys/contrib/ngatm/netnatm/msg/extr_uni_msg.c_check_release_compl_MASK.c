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
typedef  int u_int ;
struct unicx {int /*<<< orphan*/  pnni; } ;
struct uni_release_compl {int /*<<< orphan*/  unrec; int /*<<< orphan*/  crankback; int /*<<< orphan*/  uu; int /*<<< orphan*/ * git; int /*<<< orphan*/ * cause; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UNI_IE_CAUSE ; 
 int /*<<< orphan*/  UNI_IE_CRANKBACK ; 
 int /*<<< orphan*/  UNI_IE_GIT ; 
 int /*<<< orphan*/  UNI_IE_UNREC ; 
 int /*<<< orphan*/  UNI_IE_UU ; 
 int UNI_NUM_IE_GIT ; 
 int FUNC1 (int /*<<< orphan*/ ,union uni_ieall*,struct unicx*) ; 

__attribute__((used)) static int
FUNC2(struct uni_release_compl *m, struct unicx *cx)
{
	int ret = 0;
	u_int i;

	for(i = 0; i < 2 ; i++) {
		ret |= FUNC1(UNI_IE_CAUSE, (union uni_ieall *)&m->cause[i], cx);
	}
	for(i = 0; i < UNI_NUM_IE_GIT ; i++) {
		if(!(!cx->pnni))
			ret |= FUNC0(m->git[i]);
		else
			ret |= FUNC1(UNI_IE_GIT, (union uni_ieall *)&m->git[i], cx);
	}
	if(!(!cx->pnni))
		ret |= FUNC0(m->uu);
	else
		ret |= FUNC1(UNI_IE_UU, (union uni_ieall *)&m->uu, cx);
	if(!(cx->pnni))
		ret |= FUNC0(m->crankback);
	else
		ret |= FUNC1(UNI_IE_CRANKBACK, (union uni_ieall *)&m->crankback, cx);
	ret |= FUNC1(UNI_IE_UNREC, (union uni_ieall *)&m->unrec, cx);

	return ret;
}