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
struct hostapd_data {scalar_t__ range_req_active; scalar_t__ lci_req_active; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct hostapd_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct hostapd_data*) ; 
 int /*<<< orphan*/  hostapd_lci_rep_timeout_handler ; 
 int /*<<< orphan*/  hostapd_range_rep_timeout_handler ; 

void FUNC2(struct hostapd_data *hapd)
{
	FUNC1(hapd);
	FUNC0(hostapd_lci_rep_timeout_handler, hapd, NULL);
	hapd->lci_req_active = 0;
	FUNC0(hostapd_range_rep_timeout_handler, hapd, NULL);
	hapd->range_req_active = 0;
}