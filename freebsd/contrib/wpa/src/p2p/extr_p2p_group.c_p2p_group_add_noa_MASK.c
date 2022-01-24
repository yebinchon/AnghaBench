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
struct wpabuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  P2P_ATTR_NOTICE_OF_ABSENCE ; 
 int /*<<< orphan*/  FUNC0 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct wpabuf *ie, struct wpabuf *noa)
{
	if (noa == NULL)
		return;
	/* Notice of Absence */
	FUNC3(ie, P2P_ATTR_NOTICE_OF_ABSENCE);
	FUNC2(ie, FUNC0(noa));
	FUNC1(ie, noa);
}