#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct unicx {scalar_t__ multiline; int /*<<< orphan*/  indent; } ;
struct TYPE_4__ {int /*<<< orphan*/  hdr; } ;
struct uni_all {int mtype; TYPE_2__ u; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* print ) (TYPE_2__*,struct unicx*) ;int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,struct unicx*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct unicx*) ; 
 TYPE_1__** uni_msgtable ; 
 int /*<<< orphan*/  FUNC2 (struct unicx*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct unicx*) ; 
 int /*<<< orphan*/  FUNC4 (struct unicx*,char*,...) ; 

__attribute__((used)) static void
FUNC5(const struct uni_all *msg, struct unicx *cx)
{
	FUNC1("mtype", cx);
	if(msg->mtype >= 256 || uni_msgtable[msg->mtype] == NULL) {
		FUNC4(cx, "0x%02x(ERROR)", msg->mtype);
	} else {
		FUNC4(cx, "%s", uni_msgtable[msg->mtype]->name);
		FUNC3(&msg->u.hdr, cx);
		cx->indent++;
		FUNC2(cx);
		(*uni_msgtable[msg->mtype]->print)(&msg->u, cx);
		cx->indent--;
	}

	if(cx->multiline == 0)
		FUNC4(cx, "\n");
}