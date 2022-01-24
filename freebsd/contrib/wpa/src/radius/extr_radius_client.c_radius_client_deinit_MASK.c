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
struct radius_client_data {struct radius_client_data* acct_handlers; struct radius_client_data* auth_handlers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct radius_client_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct radius_client_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct radius_client_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct radius_client_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct radius_client_data*) ; 
 int /*<<< orphan*/  radius_retry_primary_timer ; 

void FUNC5(struct radius_client_data *radius)
{
	if (!radius)
		return;

	FUNC4(radius);
	FUNC3(radius);

	FUNC0(radius_retry_primary_timer, radius, NULL);

	FUNC2(radius, 0);
	FUNC1(radius->auth_handlers);
	FUNC1(radius->acct_handlers);
	FUNC1(radius);
}