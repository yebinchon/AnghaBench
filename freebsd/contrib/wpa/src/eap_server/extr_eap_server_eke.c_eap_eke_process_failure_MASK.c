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
typedef  int /*<<< orphan*/  u32 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_eke_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FAILURE ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_eke_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC3(struct eap_sm *sm,
				    struct eap_eke_data *data,
				    const struct wpabuf *respData,
				    const u8 *payload, size_t payloadlen)
{
	u32 code;

	FUNC2(MSG_DEBUG, "EAP-EKE: Received Response/Failure");

	if (payloadlen < 4) {
		FUNC2(MSG_DEBUG, "EAP-EKE: Too short EAP-EKE-Failure");
		FUNC1(data, FAILURE);
		return;
	}

	code = FUNC0(payload);
	FUNC2(MSG_DEBUG, "EAP-EKE: Peer reported failure code 0x%x", code);

	FUNC1(data, FAILURE);
}