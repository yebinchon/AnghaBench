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
typedef  int /*<<< orphan*/  u8 ;
struct eap_sim_data {size_t counter; int /*<<< orphan*/  k_encr; } ;
struct eap_sim_attrs {scalar_t__ counter; int /*<<< orphan*/ * iv; int /*<<< orphan*/  encr_data_len; int /*<<< orphan*/ * encr_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_WARNING ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct eap_sim_attrs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC3(struct eap_sim_data *data,
					       struct eap_sim_attrs *attr)
{
	struct eap_sim_attrs eattr;
	u8 *decrypted;

	if (attr->encr_data == NULL || attr->iv == NULL) {
		FUNC2(MSG_WARNING, "EAP-SIM: Notification message after "
			   "reauth did not include encrypted data");
		return -1;
	}

	decrypted = FUNC0(data->k_encr, attr->encr_data,
				       attr->encr_data_len, attr->iv, &eattr,
				       0);
	if (decrypted == NULL) {
		FUNC2(MSG_WARNING, "EAP-SIM: Failed to parse encrypted "
			   "data from notification message");
		return -1;
	}

	if (eattr.counter < 0 || (size_t) eattr.counter != data->counter) {
		FUNC2(MSG_WARNING, "EAP-SIM: Counter in notification "
			   "message does not match with counter in reauth "
			   "message");
		FUNC1(decrypted);
		return -1;
	}

	FUNC1(decrypted);
	return 0;
}