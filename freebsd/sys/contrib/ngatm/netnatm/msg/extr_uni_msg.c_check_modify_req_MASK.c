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
struct unicx {int dummy; } ;
struct uni_modify_req {int /*<<< orphan*/  unrec; int /*<<< orphan*/ * git; int /*<<< orphan*/  notify; int /*<<< orphan*/  mintraffic; int /*<<< orphan*/  atraffic; int /*<<< orphan*/  traffic; } ;

/* Variables and functions */
 int /*<<< orphan*/  UNI_IE_ATRAFFIC ; 
 int /*<<< orphan*/  UNI_IE_GIT ; 
 int /*<<< orphan*/  UNI_IE_MINTRAFFIC ; 
 int /*<<< orphan*/  UNI_IE_NOTIFY ; 
 int /*<<< orphan*/  UNI_IE_TRAFFIC ; 
 int /*<<< orphan*/  UNI_IE_UNREC ; 
 size_t UNI_NUM_IE_GIT ; 
 int FUNC0 (int /*<<< orphan*/ ,union uni_ieall*,struct unicx*) ; 

__attribute__((used)) static int
FUNC1(struct uni_modify_req *m, struct unicx *cx)
{
	int ret = 0;
	u_int i;

	ret |= FUNC0(UNI_IE_TRAFFIC, (union uni_ieall *)&m->traffic, cx);
	ret |= FUNC0(UNI_IE_ATRAFFIC, (union uni_ieall *)&m->atraffic, cx);
	ret |= FUNC0(UNI_IE_MINTRAFFIC, (union uni_ieall *)&m->mintraffic, cx);
	ret |= FUNC0(UNI_IE_NOTIFY, (union uni_ieall *)&m->notify, cx);
	for(i = 0; i < UNI_NUM_IE_GIT ; i++) {
		ret |= FUNC0(UNI_IE_GIT, (union uni_ieall *)&m->git[i], cx);
	}
	ret |= FUNC0(UNI_IE_UNREC, (union uni_ieall *)&m->unrec, cx);

	return ret;
}