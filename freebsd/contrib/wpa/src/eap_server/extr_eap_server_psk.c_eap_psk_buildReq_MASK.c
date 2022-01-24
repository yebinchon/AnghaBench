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
struct eap_psk_data {int state; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
#define  PSK_1 129 
#define  PSK_3 128 
 struct wpabuf* FUNC0 (struct eap_sm*,struct eap_psk_data*,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC1 (struct eap_sm*,struct eap_psk_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static struct wpabuf * FUNC3(struct eap_sm *sm, void *priv, u8 id)
{
	struct eap_psk_data *data = priv;

	switch (data->state) {
	case PSK_1:
		return FUNC0(sm, data, id);
	case PSK_3:
		return FUNC1(sm, data, id);
	default:
		FUNC2(MSG_DEBUG, "EAP-PSK: Unknown state %d in buildReq",
			   data->state);
		break;
	}
	return NULL;
}