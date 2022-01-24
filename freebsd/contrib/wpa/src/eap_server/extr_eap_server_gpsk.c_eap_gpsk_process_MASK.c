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
typedef  int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_gpsk_data {int dummy; } ;

/* Variables and functions */
#define  EAP_GPSK_OPCODE_GPSK_2 129 
#define  EAP_GPSK_OPCODE_GPSK_4 128 
 int /*<<< orphan*/  EAP_TYPE_GPSK ; 
 int /*<<< orphan*/  EAP_VENDOR_IETF ; 
 int /*<<< orphan*/  FUNC0 (struct eap_sm*,struct eap_gpsk_data*,int const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_sm*,struct eap_gpsk_data*,int const*,size_t) ; 
 int* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpabuf*,size_t*) ; 

__attribute__((used)) static void FUNC3(struct eap_sm *sm, void *priv,
			     struct wpabuf *respData)
{
	struct eap_gpsk_data *data = priv;
	const u8 *pos;
	size_t len;

	pos = FUNC2(EAP_VENDOR_IETF, EAP_TYPE_GPSK, respData, &len);
	if (pos == NULL || len < 1)
		return;

	switch (*pos) {
	case EAP_GPSK_OPCODE_GPSK_2:
		FUNC0(sm, data, pos + 1, len - 1);
		break;
	case EAP_GPSK_OPCODE_GPSK_4:
		FUNC1(sm, data, pos + 1, len - 1);
		break;
	}
}