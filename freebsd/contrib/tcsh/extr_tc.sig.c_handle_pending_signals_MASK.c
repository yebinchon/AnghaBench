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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  alrmcatch_disabled ; 
 scalar_t__ alrmcatch_pending ; 
 int /*<<< orphan*/  handle_interrupt ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  pchild_disabled ; 
 scalar_t__ pchild_pending ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  phup_disabled ; 
 scalar_t__ phup_pending ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  pintr_disabled ; 
 scalar_t__ pintr_pending ; 

int
FUNC4(void)
{
    int rv = 0;
    if (!phup_disabled && phup_pending) {
	phup_pending = 0;
	handle_interrupt++;
	FUNC2();
	handle_interrupt--;
    }
    if (!pintr_disabled && pintr_pending) {
	pintr_pending = 0;
	handle_interrupt++;
	FUNC3();
	handle_interrupt--;
	rv = 1;
    }
    if (!pchild_disabled && pchild_pending) {
	pchild_pending = 0;
	handle_interrupt++;
	FUNC1();
	handle_interrupt--;
    }
    if (!alrmcatch_disabled && alrmcatch_pending) {
	alrmcatch_pending = 0;
	handle_interrupt++;
	FUNC0();
	handle_interrupt--;
    }
    return rv;
}