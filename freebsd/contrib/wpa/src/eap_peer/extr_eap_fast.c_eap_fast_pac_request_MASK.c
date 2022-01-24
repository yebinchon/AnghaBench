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
struct eap_tlv_request_action_tlv {int dummy; } ;
struct eap_tlv_pac_type_tlv {int dummy; } ;
struct eap_tlv_hdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAC_TYPE_TUNNEL_PAC ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (struct wpabuf*,int) ; 

__attribute__((used)) static struct wpabuf * FUNC3(void)
{
	struct wpabuf *tmp;
	u8 *pos, *pos2;

	tmp = FUNC1(sizeof(struct eap_tlv_hdr) +
			   sizeof(struct eap_tlv_request_action_tlv) +
			   sizeof(struct eap_tlv_pac_type_tlv));
	if (tmp == NULL)
		return NULL;

	pos = FUNC2(tmp, 0);
	pos2 = FUNC0(pos, PAC_TYPE_TUNNEL_PAC);
	FUNC2(tmp, pos2 - pos);
	return tmp;
}