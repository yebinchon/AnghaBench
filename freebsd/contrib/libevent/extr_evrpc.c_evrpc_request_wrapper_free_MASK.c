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
struct evrpc_request_wrapper {struct evrpc_request_wrapper* name; int /*<<< orphan*/ * hook_meta; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct evrpc_request_wrapper*) ; 

__attribute__((used)) static void
FUNC2(struct evrpc_request_wrapper *request)
{
	if (request->hook_meta != NULL)
		FUNC0(request->hook_meta);
	FUNC1(request->name);
	FUNC1(request);
}