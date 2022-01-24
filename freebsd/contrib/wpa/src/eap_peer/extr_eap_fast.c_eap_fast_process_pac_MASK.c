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
struct wpabuf {int dummy; } ;
struct eap_sm {int expected_failure; } ;
struct eap_peer_config {int /*<<< orphan*/  pac_file; } ;
struct eap_method_ret {int /*<<< orphan*/  methodState; void* decision; } ;
struct eap_fast_pac {int dummy; } ;
struct eap_fast_data {scalar_t__ success; scalar_t__ anon_provisioning; scalar_t__ provisioning; int /*<<< orphan*/  pac; scalar_t__ use_pac_binary_format; int /*<<< orphan*/  max_pac_list_len; int /*<<< orphan*/  current_pac; } ;
typedef  int /*<<< orphan*/  entry ;

/* Variables and functions */
 void* DECISION_COND_SUCC ; 
 void* DECISION_FAIL ; 
 int /*<<< orphan*/  METHOD_DONE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct eap_fast_pac*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct eap_fast_pac*) ; 
 scalar_t__ FUNC3 (struct eap_fast_pac*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct eap_sm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct eap_sm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC6 () ; 
 struct eap_peer_config* FUNC7 (struct eap_sm*) ; 
 int /*<<< orphan*/  FUNC8 (struct eap_fast_pac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static struct wpabuf * FUNC10(struct eap_sm *sm,
					    struct eap_fast_data *data,
					    struct eap_method_ret *ret,
					    u8 *pac, size_t pac_len)
{
	struct eap_peer_config *config = FUNC7(sm);
	struct eap_fast_pac entry;

	FUNC8(&entry, 0, sizeof(entry));
	if (FUNC3(&entry, pac, pac_len) ||
	    FUNC2(&entry))
		return NULL;

	FUNC0(&data->pac, &data->current_pac, &entry);
	FUNC1(data->pac, data->max_pac_list_len);
	if (data->use_pac_binary_format)
		FUNC5(sm, data->pac, config->pac_file);
	else
		FUNC4(sm, data->pac, config->pac_file);

	if (data->provisioning) {
		if (data->anon_provisioning) {
			/*
			 * Unauthenticated provisioning does not provide keying
			 * material and must end with an EAP-Failure.
			 * Authentication will be done separately after this.
			 */
			data->success = 0;
			ret->decision = DECISION_FAIL;
		} else {
			/*
			 * Server may or may not allow authenticated
			 * provisioning also for key generation.
			 */
			ret->decision = DECISION_COND_SUCC;
		}
		FUNC9(MSG_DEBUG, "EAP-FAST: Send PAC-Acknowledgement TLV "
			   "- Provisioning completed successfully");
		sm->expected_failure = 1;
	} else {
		/*
		 * This is PAC refreshing, i.e., normal authentication that is
		 * expected to be completed with an EAP-Success. However,
		 * RFC 5422, Section 3.5 allows EAP-Failure to be sent even
		 * after protected success exchange in case of EAP-Fast
		 * provisioning, so we better use DECISION_COND_SUCC here
		 * instead of DECISION_UNCOND_SUCC.
		 */
		FUNC9(MSG_DEBUG, "EAP-FAST: Send PAC-Acknowledgement TLV "
			   "- PAC refreshing completed successfully");
		ret->decision = DECISION_COND_SUCC;
	}
	ret->methodState = METHOD_DONE;
	return FUNC6();
}