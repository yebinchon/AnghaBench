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
struct radius_das_attrs {int dummy; } ;
struct hostapd_data {int /*<<< orphan*/  wpa_auth; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct radius_das_attrs*) ; 

__attribute__((used)) static int FUNC1(struct hostapd_data *hapd,
					struct radius_das_attrs *attr)
{
	if (!hapd->wpa_auth)
		return -1;
	return FUNC0(hapd->wpa_auth, attr);
}