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
struct os_reltime {int dummy; } ;
struct hostapd_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hostapd_data*,struct os_reltime*) ; 
 int /*<<< orphan*/  FUNC1 (struct hostapd_data*,struct os_reltime*) ; 
 int /*<<< orphan*/  FUNC2 (struct os_reltime*) ; 

void FUNC3(struct hostapd_data *hapd)
{
	struct os_reltime now;

	FUNC2(&now);
	FUNC0(hapd, &now);
	FUNC1(hapd, &now);
}