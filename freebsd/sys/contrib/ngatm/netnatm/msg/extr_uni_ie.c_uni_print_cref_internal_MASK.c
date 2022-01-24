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
struct unicx {int dummy; } ;
struct uni_cref {scalar_t__ cref; int /*<<< orphan*/  flag; } ;

/* Variables and functions */
 scalar_t__ CREF_DUMMY ; 
 scalar_t__ CREF_GLOBAL ; 
 int /*<<< orphan*/  FUNC0 (struct unicx*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct unicx*,char*,...) ; 

__attribute__((used)) static void
FUNC2(const struct uni_cref *cref, struct unicx *cx)
{
	FUNC0(cx, "cref", "%d.", cref->flag);
	if (cref->cref == CREF_GLOBAL)
		FUNC1(cx, "GLOBAL");
	else if (cref->cref == CREF_DUMMY)
		FUNC1(cx, "DUMMY");
	else
		FUNC1(cx, "%d", cref->cref);
}