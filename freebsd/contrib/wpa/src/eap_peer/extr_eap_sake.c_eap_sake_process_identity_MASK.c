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
struct eap_sake_parse_attr {int /*<<< orphan*/  any_id_req; int /*<<< orphan*/  perm_id_req; } ;
struct eap_sake_data {scalar_t__ state; scalar_t__ peerid_len; int /*<<< orphan*/  peerid; } ;
struct eap_method_ret {int /*<<< orphan*/  ignore; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHALLENGE ; 
 int /*<<< orphan*/  EAP_SAKE_AT_PEERID ; 
 int /*<<< orphan*/  EAP_SAKE_SUBTYPE_IDENTITY ; 
 scalar_t__ IDENTITY ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 struct wpabuf* FUNC1 (struct eap_sake_data*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,size_t,struct eap_sake_parse_attr*) ; 
 int /*<<< orphan*/  FUNC3 (struct eap_sake_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static struct wpabuf * FUNC5(struct eap_sm *sm,
						 struct eap_sake_data *data,
						 struct eap_method_ret *ret,
						 u8 id,
						 const u8 *payload,
						 size_t payload_len)
{
	struct eap_sake_parse_attr attr;
	struct wpabuf *resp;

	if (data->state != IDENTITY) {
		ret->ignore = TRUE;
		return NULL;
	}

	FUNC4(MSG_DEBUG, "EAP-SAKE: Received Request/Identity");

	if (FUNC2(payload, payload_len, &attr))
		return NULL;

	if (!attr.perm_id_req && !attr.any_id_req) {
		FUNC4(MSG_INFO, "EAP-SAKE: No AT_PERM_ID_REQ or "
			   "AT_ANY_ID_REQ in Request/Identity");
		return NULL;
	}

	FUNC4(MSG_DEBUG, "EAP-SAKE: Sending Response/Identity");

	resp = FUNC1(data, id, 2 + data->peerid_len,
				  EAP_SAKE_SUBTYPE_IDENTITY);
	if (resp == NULL)
		return NULL;

	FUNC4(MSG_DEBUG, "EAP-SAKE: * AT_PEERID");
	FUNC0(resp, EAP_SAKE_AT_PEERID,
			  data->peerid, data->peerid_len);

	FUNC3(data, CHALLENGE);

	return resp;
}