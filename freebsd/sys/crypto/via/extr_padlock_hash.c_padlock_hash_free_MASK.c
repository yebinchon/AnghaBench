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
struct padlock_session {int /*<<< orphan*/ * ses_octx; TYPE_1__* ses_axf; int /*<<< orphan*/ * ses_ictx; } ;
struct TYPE_2__ {int /*<<< orphan*/  ctxsize; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_PADLOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 

void
FUNC3(struct padlock_session *ses)
{

	if (ses->ses_ictx != NULL) {
		FUNC2(ses->ses_axf, ses->ses_ictx);
		FUNC0(ses->ses_ictx, ses->ses_axf->ctxsize);
		FUNC1(ses->ses_ictx, M_PADLOCK);
		ses->ses_ictx = NULL;
	}
	if (ses->ses_octx != NULL) {
		FUNC2(ses->ses_axf, ses->ses_octx);
		FUNC0(ses->ses_octx, ses->ses_axf->ctxsize);
		FUNC1(ses->ses_octx, M_PADLOCK);
		ses->ses_octx = NULL;
	}
}