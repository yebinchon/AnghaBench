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
struct eap_wsc_data {int state; int /*<<< orphan*/  out_used; int /*<<< orphan*/ * out_buf; int /*<<< orphan*/  out_op_code; int /*<<< orphan*/  wps; } ;
struct eap_sm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_CODE_REQUEST ; 
#define  FRAG_ACK 131 
#define  MESG 130 
 int /*<<< orphan*/  MSG_DEBUG ; 
#define  START 129 
#define  WAIT_FRAG_ACK 128 
 struct wpabuf* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC1 (struct eap_wsc_data*,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC2 (struct eap_sm*,struct eap_wsc_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct wpabuf * FUNC5(struct eap_sm *sm, void *priv, u8 id)
{
	struct eap_wsc_data *data = priv;

	switch (data->state) {
	case START:
		return FUNC2(sm, data, id);
	case MESG:
		if (data->out_buf == NULL) {
			data->out_buf = FUNC4(data->wps,
						    &data->out_op_code);
			if (data->out_buf == NULL) {
				FUNC3(MSG_DEBUG, "EAP-WSC: Failed to "
					   "receive message from WPS");
				return NULL;
			}
			data->out_used = 0;
		}
		/* fall through */
	case WAIT_FRAG_ACK:
		return FUNC1(data, id);
	case FRAG_ACK:
		return FUNC0(id, EAP_CODE_REQUEST);
	default:
		FUNC3(MSG_DEBUG, "EAP-WSC: Unexpected state %d in "
			   "buildReq", data->state);
		return NULL;
	}
}