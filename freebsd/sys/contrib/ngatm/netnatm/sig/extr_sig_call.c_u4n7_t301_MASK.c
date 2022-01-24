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
struct call {TYPE_1__* uni; scalar_t__ mine; int /*<<< orphan*/  cref; } ;
struct TYPE_2__ {int /*<<< orphan*/  cause; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UNI_CAUSE_LOC_USER ; 
 int /*<<< orphan*/  UNI_CAUSE_NO_RESP_ALERT ; 
 int /*<<< orphan*/  UNI_FAC_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct call*) ; 

__attribute__((used)) static void
FUNC3(struct call *c)
{
	FUNC1(c->uni, UNI_FAC_TIMEOUT, 1, "call %u/%s T301 tick",
	    c->cref, c->mine ? "mine" : "his");

	FUNC0(c->uni->cause, UNI_CAUSE_LOC_USER, UNI_CAUSE_NO_RESP_ALERT);
	FUNC2(c);
}