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
typedef  int /*<<< orphan*/  u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;
struct eap_peap_data {scalar_t__ peap_version; int /*<<< orphan*/  ssl; TYPE_1__* phase2_method; int /*<<< orphan*/ * phase2_priv; } ;
struct eap_hdr {int dummy; } ;
struct TYPE_2__ {scalar_t__ method; struct wpabuf* (* buildReq ) (struct eap_sm*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ EAP_TYPE_TLV ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 struct wpabuf* FUNC0 (struct eap_sm*,int /*<<< orphan*/ *,struct wpabuf*) ; 
 struct wpabuf* FUNC1 (struct eap_sm*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*) ; 
 int /*<<< orphan*/ * FUNC5 (struct wpabuf*) ; 
 size_t FUNC6 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf*,int /*<<< orphan*/  const*,size_t) ; 

__attribute__((used)) static struct wpabuf * FUNC8(struct eap_sm *sm,
						 struct eap_peap_data *data,
						 u8 id)
{
	struct wpabuf *buf, *encr_req, msgbuf;
	const u8 *req;
	size_t req_len;

	if (data->phase2_method == NULL || data->phase2_priv == NULL) {
		FUNC3(MSG_DEBUG, "EAP-PEAP: Phase 2 method not ready");
		return NULL;
	}
	buf = data->phase2_method->buildReq(sm, data->phase2_priv, id);
	if (buf == NULL)
		return NULL;

	req = FUNC5(buf);
	req_len = FUNC6(buf);
	FUNC2(MSG_DEBUG, "EAP-PEAP: Encrypting Phase 2 data",
			req, req_len);

	if (data->peap_version == 0 &&
	    data->phase2_method->method != EAP_TYPE_TLV) {
		req += sizeof(struct eap_hdr);
		req_len -= sizeof(struct eap_hdr);
	}

	FUNC7(&msgbuf, req, req_len);
	encr_req = FUNC0(sm, &data->ssl, &msgbuf);
	FUNC4(buf);

	return encr_req;
}