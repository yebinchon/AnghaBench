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
struct mesh_rsn {scalar_t__ auth; scalar_t__ igtk_len; int /*<<< orphan*/  igtk; scalar_t__ mgtk_len; int /*<<< orphan*/  mgtk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct mesh_rsn *rsn)
{
	FUNC0(rsn->mgtk, 0, sizeof(rsn->mgtk));
	rsn->mgtk_len = 0;
	FUNC0(rsn->igtk, 0, sizeof(rsn->igtk));
	rsn->igtk_len = 0;
	if (rsn->auth)
		FUNC1(rsn->auth);
}