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
struct unicx {int dummy; } ;
struct uni_status_enq {int /*<<< orphan*/  unrec; int /*<<< orphan*/  epref; } ;

/* Variables and functions */
 int /*<<< orphan*/  UNI_IE_EPREF ; 
 int /*<<< orphan*/  UNI_IE_UNREC ; 
 int FUNC0 (int /*<<< orphan*/ ,union uni_ieall*,struct unicx*) ; 

__attribute__((used)) static int
FUNC1(struct uni_status_enq *m, struct unicx *cx)
{
	int ret = 0;

	ret |= FUNC0(UNI_IE_EPREF, (union uni_ieall *)&m->epref, cx);
	ret |= FUNC0(UNI_IE_UNREC, (union uni_ieall *)&m->unrec, cx);

	return ret;
}