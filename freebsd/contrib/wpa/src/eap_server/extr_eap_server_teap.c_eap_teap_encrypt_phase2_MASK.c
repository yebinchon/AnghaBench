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
struct wpabuf {int dummy; } ;
struct TYPE_2__ {struct wpabuf* tls_out; scalar_t__ tls_out_pos; } ;
struct eap_teap_data {TYPE_1__ ssl; } ;
struct eap_sm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_WARNING ; 
 struct wpabuf* FUNC0 (struct eap_sm*,TYPE_1__*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*) ; 
 scalar_t__ FUNC4 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*,struct wpabuf*) ; 
 scalar_t__ FUNC6 (struct wpabuf**,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct eap_sm *sm,
				   struct eap_teap_data *data,
				   struct wpabuf *plain, int piggyback)
{
	struct wpabuf *encr;

	FUNC1(MSG_DEBUG, "EAP-TEAP: Encrypting Phase 2 TLVs",
			    plain);
	encr = FUNC0(sm, &data->ssl, plain);
	FUNC3(plain);

	if (!encr)
		return -1;

	if (data->ssl.tls_out && piggyback) {
		FUNC2(MSG_DEBUG,
			   "EAP-TEAP: Piggyback Phase 2 data (len=%d) with last Phase 1 Message (len=%d used=%d)",
			   (int) FUNC4(encr),
			   (int) FUNC4(data->ssl.tls_out),
			   (int) data->ssl.tls_out_pos);
		if (FUNC6(&data->ssl.tls_out, FUNC4(encr)) < 0) {
			FUNC2(MSG_WARNING,
				   "EAP-TEAP: Failed to resize output buffer");
			FUNC3(encr);
			return -1;
		}
		FUNC5(data->ssl.tls_out, encr);
		FUNC3(encr);
	} else {
		FUNC3(data->ssl.tls_out);
		data->ssl.tls_out_pos = 0;
		data->ssl.tls_out = encr;
	}

	return 0;
}