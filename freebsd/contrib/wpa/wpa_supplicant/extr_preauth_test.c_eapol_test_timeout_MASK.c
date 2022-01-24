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
struct preauth_test_data {int auth_timed_out; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(void *eloop_ctx, void *timeout_ctx)
{
	struct preauth_test_data *p = eloop_ctx;
	FUNC1("EAPOL test timed out\n");
	p->auth_timed_out = 1;
	FUNC0();
}