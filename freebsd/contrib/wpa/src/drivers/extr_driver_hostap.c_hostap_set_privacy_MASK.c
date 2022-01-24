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
struct hostap_drvier_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PRISM2_PARAM_PRIVACY_INVOKED ; 
 int FUNC0 (struct hostap_drvier_data*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(void *priv, int enabled)
{
	struct hostap_drvier_data *drv = priv;

	return FUNC0(drv, PRISM2_PARAM_PRIVACY_INVOKED,
					enabled);
}