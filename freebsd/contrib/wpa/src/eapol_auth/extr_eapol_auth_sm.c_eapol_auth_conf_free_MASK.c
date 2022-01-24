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
struct eapol_auth_config {int /*<<< orphan*/ * erp_domain; int /*<<< orphan*/ * eap_fast_a_id_info; int /*<<< orphan*/ * eap_fast_a_id; int /*<<< orphan*/ * pac_opaque_encr_key; int /*<<< orphan*/ * eap_req_id_text; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct eapol_auth_config *conf)
{
	FUNC0(conf->eap_req_id_text);
	conf->eap_req_id_text = NULL;
	FUNC0(conf->pac_opaque_encr_key);
	conf->pac_opaque_encr_key = NULL;
	FUNC0(conf->eap_fast_a_id);
	conf->eap_fast_a_id = NULL;
	FUNC0(conf->eap_fast_a_id_info);
	conf->eap_fast_a_id_info = NULL;
	FUNC0(conf->erp_domain);
	conf->erp_domain = NULL;
}