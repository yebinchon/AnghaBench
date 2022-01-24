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
struct eap_sm {int dummy; } ;
struct eap_fast_data {scalar_t__ anon_provisioning; } ;

/* Variables and functions */
 int FUNC0 (struct eap_sm*,struct eap_fast_data*) ; 
 int FUNC1 (struct eap_sm*,struct eap_fast_data*) ; 

__attribute__((used)) static int FUNC2(struct eap_sm *sm, struct eap_fast_data *data)
{
	int res;

	if (data->anon_provisioning)
		res = FUNC1(sm, data);
	else
		res = FUNC0(sm, data);
	return res;
}