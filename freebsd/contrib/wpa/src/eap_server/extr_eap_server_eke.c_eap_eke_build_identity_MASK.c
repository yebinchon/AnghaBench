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
struct eap_sm {int server_id_len; int /*<<< orphan*/  server_id; } ;
struct eap_eke_data {int serverid_type; struct wpabuf* msgs; } ;

/* Variables and functions */
 int EAP_EKE_DHGROUP_EKE_14 ; 
 int EAP_EKE_DHGROUP_EKE_15 ; 
 int EAP_EKE_DHGROUP_EKE_16 ; 
 int EAP_EKE_ENCR_AES128_CBC ; 
 int /*<<< orphan*/  EAP_EKE_ID ; 
 int EAP_EKE_MAC_HMAC_SHA1 ; 
 int EAP_EKE_MAC_HMAC_SHA2_256 ; 
 int EAP_EKE_PRF_HMAC_SHA1 ; 
 int EAP_EKE_PRF_HMAC_SHA2_256 ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 struct wpabuf* FUNC0 (struct eap_eke_data*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct wpabuf* FUNC2 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*,int) ; 

__attribute__((used)) static struct wpabuf * FUNC6(struct eap_sm *sm,
					      struct eap_eke_data *data,
					      u8 id)
{
	struct wpabuf *msg;
	size_t plen;

	FUNC1(MSG_DEBUG, "EAP-EKE: Request/Identity");

	plen = 2 + 4 * 4 + 1 + sm->server_id_len;
	msg = FUNC0(data, id, plen, EAP_EKE_ID);
	if (msg == NULL)
		return NULL;

	FUNC5(msg, 4); /* NumProposals */
	FUNC5(msg, 0); /* Reserved */

	/* Proposal - DH Group 16 with AES128-CBC and SHA256 */
	FUNC5(msg, EAP_EKE_DHGROUP_EKE_16); /* Group Description */
	FUNC5(msg, EAP_EKE_ENCR_AES128_CBC); /* Encryption */
	FUNC5(msg, EAP_EKE_PRF_HMAC_SHA2_256); /* PRF */
	FUNC5(msg, EAP_EKE_MAC_HMAC_SHA2_256); /* MAC */

	/* Proposal - DH Group 15 with AES128-CBC and SHA256 */
	FUNC5(msg, EAP_EKE_DHGROUP_EKE_15); /* Group Description */
	FUNC5(msg, EAP_EKE_ENCR_AES128_CBC); /* Encryption */
	FUNC5(msg, EAP_EKE_PRF_HMAC_SHA2_256); /* PRF */
	FUNC5(msg, EAP_EKE_MAC_HMAC_SHA2_256); /* MAC */

	/* Proposal - DH Group 14 with AES128-CBC and SHA256 */
	FUNC5(msg, EAP_EKE_DHGROUP_EKE_14); /* Group Description */
	FUNC5(msg, EAP_EKE_ENCR_AES128_CBC); /* Encryption */
	FUNC5(msg, EAP_EKE_PRF_HMAC_SHA2_256); /* PRF */
	FUNC5(msg, EAP_EKE_MAC_HMAC_SHA2_256); /* MAC */

	/*
	 * Proposal - DH Group 14 with AES128-CBC and SHA1
	 * (mandatory to implement algorithms)
	 */
	FUNC5(msg, EAP_EKE_DHGROUP_EKE_14); /* Group Description */
	FUNC5(msg, EAP_EKE_ENCR_AES128_CBC); /* Encryption */
	FUNC5(msg, EAP_EKE_PRF_HMAC_SHA1); /* PRF */
	FUNC5(msg, EAP_EKE_MAC_HMAC_SHA1); /* MAC */

	/* Server IDType + Identity */
	FUNC5(msg, data->serverid_type);
	FUNC4(msg, sm->server_id, sm->server_id_len);

	FUNC3(data->msgs);
	data->msgs = FUNC2(msg);
	if (data->msgs == NULL) {
		FUNC3(msg);
		return NULL;
	}

	return msg;
}