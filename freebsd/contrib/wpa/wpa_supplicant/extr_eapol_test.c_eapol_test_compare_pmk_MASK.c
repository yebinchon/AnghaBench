#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  const u8 ;
struct eapol_test_data {int authenticator_pmk_len; size_t authenticator_eap_key_name_len; int /*<<< orphan*/  const* authenticator_eap_key_name; TYPE_1__* wpa_s; int /*<<< orphan*/  num_mppe_ok; scalar_t__ no_mppe_keys; int /*<<< orphan*/  num_mppe_mismatch; scalar_t__ radius_access_accept_received; int /*<<< orphan*/  const* authenticator_pmk; } ;
struct TYPE_2__ {int /*<<< orphan*/  eapol; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int PMK_LEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  const* FUNC1 (int /*<<< orphan*/ ,size_t*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC6(struct eapol_test_data *e)
{
	u8 pmk[PMK_LEN];
	int ret = 1;
	const u8 *sess_id;
	size_t sess_id_len;

	if (FUNC0(e->wpa_s->eapol, pmk, PMK_LEN) == 0) {
		FUNC4(MSG_DEBUG, "PMK from EAPOL", pmk, PMK_LEN);
		if (FUNC2(pmk, e->authenticator_pmk, PMK_LEN) != 0) {
			FUNC3("WARNING: PMK mismatch\n");
			FUNC4(MSG_DEBUG, "PMK from AS",
				    e->authenticator_pmk, PMK_LEN);
		} else if (e->radius_access_accept_received)
			ret = 0;
	} else if (e->authenticator_pmk_len == 16 &&
		   FUNC0(e->wpa_s->eapol, pmk, 16) == 0) {
		FUNC4(MSG_DEBUG, "LEAP PMK from EAPOL", pmk, 16);
		if (FUNC2(pmk, e->authenticator_pmk, 16) != 0) {
			FUNC3("WARNING: PMK mismatch\n");
			FUNC4(MSG_DEBUG, "PMK from AS",
				    e->authenticator_pmk, 16);
		} else if (e->radius_access_accept_received)
			ret = 0;
	} else if (e->radius_access_accept_received && e->no_mppe_keys) {
		/* No keying material expected */
		ret = 0;
	}

	if (ret && !e->no_mppe_keys)
		e->num_mppe_mismatch++;
	else if (!e->no_mppe_keys)
		e->num_mppe_ok++;

	sess_id = FUNC1(e->wpa_s->eapol, &sess_id_len);
	if (!sess_id)
		return ret;
	if (e->authenticator_eap_key_name_len == 0) {
		FUNC5(MSG_INFO, "No EAP-Key-Name received from server");
		return ret;
	}

	if (e->authenticator_eap_key_name_len != sess_id_len ||
	    FUNC2(e->authenticator_eap_key_name, sess_id, sess_id_len) != 0)
	{
		FUNC5(MSG_INFO,
			   "Locally derived EAP Session-Id does not match EAP-Key-Name from server");
		FUNC4(MSG_DEBUG, "EAP Session-Id", sess_id, sess_id_len);
		FUNC4(MSG_DEBUG, "EAP-Key-Name from server",
			    e->authenticator_eap_key_name,
			    e->authenticator_eap_key_name_len);
	} else {
		FUNC5(MSG_INFO,
			   "Locally derived EAP Session-Id matches EAP-Key-Name from server");
	}

	return ret;
}