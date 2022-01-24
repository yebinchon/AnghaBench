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
union uni_msgall {int /*<<< orphan*/  hdr; } ;
typedef  int u_int ;
struct unicx {scalar_t__ multiline; int /*<<< orphan*/  indent; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* print ) (union uni_msgall const*,struct unicx*) ;int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (union uni_msgall const*,struct unicx*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct unicx*) ; 
 TYPE_1__** uni_msgtable ; 
 int /*<<< orphan*/  FUNC2 (struct unicx*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct unicx*) ; 
 int /*<<< orphan*/  FUNC4 (struct unicx*,char*,...) ; 

__attribute__((used)) static void
FUNC5(u_int mtype, const union uni_msgall *msg,
    struct unicx *cx)
{

	FUNC1("mtype", cx);
	if (mtype >= 256 || uni_msgtable[mtype] == NULL) {
		FUNC4(cx, "0x%02x(ERROR)", mtype);
	} else {
		FUNC4(cx, "%s", uni_msgtable[mtype]->name);
		FUNC3(&msg->hdr, cx);
		cx->indent++;
		FUNC2(cx);
		(*uni_msgtable[mtype]->print)(msg, cx);
		cx->indent--;
	}

	if(cx->multiline == 0)
		FUNC4(cx, "\n");
}