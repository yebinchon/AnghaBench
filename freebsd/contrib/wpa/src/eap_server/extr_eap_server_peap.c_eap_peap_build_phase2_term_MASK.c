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
struct eap_peap_data {int /*<<< orphan*/  ssl; } ;
struct eap_hdr {int /*<<< orphan*/  length; int /*<<< orphan*/  identifier; int /*<<< orphan*/  code; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_CODE_FAILURE ; 
 int /*<<< orphan*/  EAP_CODE_SUCCESS ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 struct wpabuf* FUNC0 (struct eap_sm*,int /*<<< orphan*/ *,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct eap_hdr*) ; 
 struct eap_hdr* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*,struct eap_hdr*,size_t) ; 

__attribute__((used)) static struct wpabuf * FUNC6(struct eap_sm *sm,
						  struct eap_peap_data *data,
						  u8 id, int success)
{
	struct wpabuf *encr_req, msgbuf;
	size_t req_len;
	struct eap_hdr *hdr;

	req_len = sizeof(*hdr);
	hdr = FUNC3(req_len);
	if (hdr == NULL)
		return NULL;

	hdr->code = success ? EAP_CODE_SUCCESS : EAP_CODE_FAILURE;
	hdr->identifier = id;
	hdr->length = FUNC1(req_len);

	FUNC4(MSG_DEBUG, "EAP-PEAP: Encrypting Phase 2 data",
			(u8 *) hdr, req_len);

	FUNC5(&msgbuf, hdr, req_len);
	encr_req = FUNC0(sm, &data->ssl, &msgbuf);
	FUNC2(hdr);

	return encr_req;
}