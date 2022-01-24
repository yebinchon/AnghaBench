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
struct eap_tnc_data {int state; int /*<<< orphan*/  out_used; int /*<<< orphan*/ * out_buf; int /*<<< orphan*/  tncs; } ;
struct eap_sm {int dummy; } ;

/* Variables and functions */
#define  CONTINUE 134 
#define  DONE 133 
 int /*<<< orphan*/  EAP_CODE_REQUEST ; 
#define  FAIL 132 
#define  FRAG_ACK 131 
 int /*<<< orphan*/  MSG_DEBUG ; 
#define  RECOMMENDATION 130 
#define  START 129 
#define  WAIT_FRAG_ACK 128 
 int /*<<< orphan*/ * FUNC0 (struct eap_sm*,struct eap_tnc_data*) ; 
 struct wpabuf* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC2 (struct eap_tnc_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (struct eap_sm*,struct eap_tnc_data*) ; 
 struct wpabuf* FUNC4 (struct eap_sm*,struct eap_tnc_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static struct wpabuf * FUNC7(struct eap_sm *sm, void *priv, u8 id)
{
	struct eap_tnc_data *data = priv;

	switch (data->state) {
	case START:
		FUNC5(data->tncs);
		return FUNC4(sm, data, id);
	case CONTINUE:
		if (data->out_buf == NULL) {
			data->out_buf = FUNC0(sm, data);
			if (data->out_buf == NULL) {
				FUNC6(MSG_DEBUG, "EAP-TNC: Failed to "
					   "generate message");
				return NULL;
			}
			data->out_used = 0;
		}
		return FUNC2(data, id);
	case RECOMMENDATION:
		if (data->out_buf == NULL) {
			data->out_buf = FUNC3(sm, data);
			if (data->out_buf == NULL) {
				FUNC6(MSG_DEBUG, "EAP-TNC: Failed to "
					   "generate recommendation message");
				return NULL;
			}
			data->out_used = 0;
		}
		return FUNC2(data, id);
	case WAIT_FRAG_ACK:
		return FUNC2(data, id);
	case FRAG_ACK:
		return FUNC1(id, EAP_CODE_REQUEST);
	case DONE:
	case FAIL:
		return NULL;
	}

	return NULL;
}