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
typedef  int /*<<< orphan*/  u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int /*<<< orphan*/  server_id_len; int /*<<< orphan*/  server_id; } ;
struct eap_sake_parse_attr {int /*<<< orphan*/  mic_p; } ;
struct TYPE_2__ {int /*<<< orphan*/  auth; } ;
struct eap_sake_data {scalar_t__ state; int /*<<< orphan*/  peerid_len; int /*<<< orphan*/  peerid; int /*<<< orphan*/  rand_p; int /*<<< orphan*/  rand_s; TYPE_1__ tek; } ;

/* Variables and functions */
 scalar_t__ CONFIRM ; 
 int EAP_SAKE_MIC_LEN ; 
 int /*<<< orphan*/  FAILURE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,size_t,struct eap_sake_parse_attr*) ; 
 int /*<<< orphan*/  FUNC2 (struct eap_sake_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf const*) ; 

__attribute__((used)) static void FUNC7(struct eap_sm *sm,
				     struct eap_sake_data *data,
				     const struct wpabuf *respData,
				     const u8 *payload, size_t payloadlen)
{
	struct eap_sake_parse_attr attr;
	u8 mic_p[EAP_SAKE_MIC_LEN];

	if (data->state != CONFIRM)
		return;

	FUNC4(MSG_DEBUG, "EAP-SAKE: Received Response/Confirm");

	if (FUNC1(payload, payloadlen, &attr))
		return;

	if (!attr.mic_p) {
		FUNC4(MSG_INFO, "EAP-SAKE: Response/Confirm did not "
			   "include AT_MIC_P");
		return;
	}

	if (FUNC0(data->tek.auth, data->rand_s, data->rand_p,
				 sm->server_id, sm->server_id_len,
				 data->peerid, data->peerid_len, 1,
				 FUNC5(respData), FUNC6(respData),
				 attr.mic_p, mic_p) < 0) {
		FUNC4(MSG_INFO, "EAP-SAKE: Failed to compute MIC");
		return;
	}
	if (FUNC3(attr.mic_p, mic_p, EAP_SAKE_MIC_LEN) != 0) {
		FUNC4(MSG_INFO, "EAP-SAKE: Incorrect AT_MIC_P");
		FUNC2(data, FAILURE);
	} else
		FUNC2(data, SUCCESS);
}