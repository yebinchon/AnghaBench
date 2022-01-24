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
struct wpabuf {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  integ; int /*<<< orphan*/  encr; } ;
struct ikev2_responder_data {scalar_t__ last_msg; int /*<<< orphan*/  state; int /*<<< orphan*/  keys; TYPE_1__ proposal; } ;
struct ikev2_hdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IKEV2_FAILED ; 
 int /*<<< orphan*/  IKEV2_PAYLOAD_ENCRYPTED ; 
 int /*<<< orphan*/  IKEV2_PAYLOAD_NOTIFICATION ; 
 int /*<<< orphan*/  IKEV2_PAYLOAD_NO_NEXT_PAYLOAD ; 
 int /*<<< orphan*/  IKE_SA_AUTH ; 
 int /*<<< orphan*/  IKE_SA_INIT ; 
 scalar_t__ LAST_MSG_SA_AUTH ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int /*<<< orphan*/  SA_INIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct wpabuf*,struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ikev2_responder_data*,struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct ikev2_responder_data*,struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,struct wpabuf*) ; 
 struct wpabuf* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*) ; 

__attribute__((used)) static struct wpabuf * FUNC7(struct ikev2_responder_data *data)
{
	struct wpabuf *msg;

	msg = FUNC5(sizeof(struct ikev2_hdr) + 1000);
	if (msg == NULL)
		return NULL;
	if (data->last_msg == LAST_MSG_SA_AUTH) {
		/* HDR, SK{N} */
		struct wpabuf *plain = FUNC5(100);
		if (plain == NULL) {
			FUNC6(msg);
			return NULL;
		}
		FUNC1(data, msg, IKE_SA_AUTH,
				IKEV2_PAYLOAD_ENCRYPTED, 1);
		if (FUNC2(data, plain,
					     IKEV2_PAYLOAD_NO_NEXT_PAYLOAD) ||
		    FUNC0(data->proposal.encr,
					  data->proposal.integ,
					  &data->keys, 0, msg, plain,
					  IKEV2_PAYLOAD_NOTIFICATION)) {
			FUNC6(plain);
			FUNC6(msg);
			return NULL;
		}
		FUNC6(plain);
		data->state = IKEV2_FAILED;
	} else {
		/* HDR, N */
		FUNC1(data, msg, IKE_SA_INIT,
				IKEV2_PAYLOAD_NOTIFICATION, 0);
		if (FUNC2(data, msg,
					     IKEV2_PAYLOAD_NO_NEXT_PAYLOAD)) {
			FUNC6(msg);
			return NULL;
		}
		data->state = SA_INIT;
	}

	FUNC3(msg);

	FUNC4(MSG_MSGDUMP, "IKEV2: Sending message (Notification)",
			msg);

	return msg;
}