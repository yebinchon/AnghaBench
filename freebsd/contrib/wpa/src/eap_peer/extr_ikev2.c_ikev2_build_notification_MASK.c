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
struct TYPE_2__ {int dh; } ;
struct ikev2_responder_data {int error_type; TYPE_1__ proposal; } ;
struct ikev2_payload_hdr {int /*<<< orphan*/  payload_length; scalar_t__ flags; int /*<<< orphan*/  next_payload; } ;

/* Variables and functions */
#define  AUTHENTICATION_FAILED 129 
#define  INVALID_KE_PAYLOAD 128 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 struct ikev2_payload_hdr* FUNC2 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct ikev2_responder_data *data,
				    struct wpabuf *msg, u8 next_payload)
{
	struct ikev2_payload_hdr *phdr;
	size_t plen;

	FUNC1(MSG_DEBUG, "IKEV2: Adding Notification payload");

	if (data->error_type == 0) {
		FUNC1(MSG_INFO, "IKEV2: No Notify Message Type "
			   "available");
		return -1;
	}

	/* Notify - RFC 4306, Sect. 3.10 */
	phdr = FUNC2(msg, sizeof(*phdr));
	phdr->next_payload = next_payload;
	phdr->flags = 0;
	FUNC4(msg, 0); /* Protocol ID: no existing SA */
	FUNC4(msg, 0); /* SPI Size */
	FUNC3(msg, data->error_type);

	switch (data->error_type) {
	case INVALID_KE_PAYLOAD:
		if (data->proposal.dh == -1) {
			FUNC1(MSG_INFO, "IKEV2: No DH Group selected for "
				   "INVALID_KE_PAYLOAD notifications");
			return -1;
		}
		FUNC3(msg, data->proposal.dh);
		FUNC1(MSG_DEBUG, "IKEV2: INVALID_KE_PAYLOAD - request "
			   "DH Group #%d", data->proposal.dh);
		break;
	case AUTHENTICATION_FAILED:
		/* no associated data */
		break;
	default:
		FUNC1(MSG_INFO, "IKEV2: Unsupported Notify Message Type "
			   "%d", data->error_type);
		return -1;
	}

	plen = (u8 *) FUNC2(msg, 0) - (u8 *) phdr;
	FUNC0(phdr->payload_length, plen);
	return 0;
}