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
struct eap_sm {scalar_t__ ssl_ctx; scalar_t__ ssl_ctx2; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct eap_sm*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_sm*) ; 
 int /*<<< orphan*/  FUNC2 (struct eap_sm*) ; 
 int /*<<< orphan*/  FUNC3 (struct eap_sm*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

void FUNC5(struct eap_sm *sm)
{
	if (sm == NULL)
		return;
	FUNC0(sm, "EAP deinit");
	FUNC2(sm);
	if (sm->ssl_ctx2)
		FUNC4(sm->ssl_ctx2);
	FUNC4(sm->ssl_ctx);
	FUNC1(sm);
	FUNC3(sm);
}