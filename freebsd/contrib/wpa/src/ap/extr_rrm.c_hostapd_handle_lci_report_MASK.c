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
typedef  scalar_t__ u8 ;
struct hostapd_data {scalar_t__ lci_req_token; scalar_t__ lci_req_active; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct hostapd_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hostapd_lci_rep_timeout_handler ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__,...) ; 

__attribute__((used)) static void FUNC2(struct hostapd_data *hapd, u8 token,
				      const u8 *pos, size_t len)
{
	if (!hapd->lci_req_active || hapd->lci_req_token != token) {
		FUNC1(MSG_DEBUG, "Unexpected LCI report, token %u", token);
		return;
	}

	hapd->lci_req_active = 0;
	FUNC0(hostapd_lci_rep_timeout_handler, hapd, NULL);
	FUNC1(MSG_DEBUG, "LCI report token %u len %zu", token, len);
}