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
struct eap_sm {int dummy; } ;
struct eap_sim_data {int state; } ;

/* Variables and functions */
#define  CHALLENGE 131 
 int /*<<< orphan*/  MSG_DEBUG ; 
#define  NOTIFICATION 130 
#define  REAUTH 129 
#define  START 128 
 struct wpabuf* FUNC0 (struct eap_sm*,struct eap_sim_data*,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC1 (struct eap_sm*,struct eap_sim_data*,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC2 (struct eap_sm*,struct eap_sim_data*,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC3 (struct eap_sm*,struct eap_sim_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static struct wpabuf * FUNC5(struct eap_sm *sm, void *priv, u8 id)
{
	struct eap_sim_data *data = priv;

	switch (data->state) {
	case START:
		return FUNC3(sm, data, id);
	case CHALLENGE:
		return FUNC0(sm, data, id);
	case REAUTH:
		return FUNC2(sm, data, id);
	case NOTIFICATION:
		return FUNC1(sm, data, id);
	default:
		FUNC4(MSG_DEBUG, "EAP-SIM: Unknown state %d in "
			   "buildReq", data->state);
		break;
	}
	return NULL;
}