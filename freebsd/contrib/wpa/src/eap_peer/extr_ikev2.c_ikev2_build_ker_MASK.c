#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct wpabuf {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  dh; } ;
struct ikev2_responder_data {TYPE_2__* dh; TYPE_1__ proposal; int /*<<< orphan*/  r_dh_private; } ;
struct ikev2_payload_hdr {int /*<<< orphan*/  payload_length; scalar_t__ flags; int /*<<< orphan*/  next_payload; } ;
struct TYPE_4__ {int prime_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 struct wpabuf* FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*) ; 
 int FUNC4 (struct wpabuf*) ; 
 struct ikev2_payload_hdr* FUNC5 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf*,struct wpabuf*) ; 

__attribute__((used)) static int FUNC8(struct ikev2_responder_data *data,
			   struct wpabuf *msg, u8 next_payload)
{
	struct ikev2_payload_hdr *phdr;
	size_t plen;
	struct wpabuf *pv;

	FUNC2(MSG_DEBUG, "IKEV2: Adding KEr payload");

	pv = FUNC1(data->dh, &data->r_dh_private);
	if (pv == NULL) {
		FUNC2(MSG_DEBUG, "IKEV2: Failed to initialize DH");
		return -1;
	}

	/* KEr - RFC 4306, Sect. 3.4 */
	phdr = FUNC5(msg, sizeof(*phdr));
	phdr->next_payload = next_payload;
	phdr->flags = 0;

	FUNC6(msg, data->proposal.dh); /* DH Group # */
	FUNC5(msg, 2); /* RESERVED */
	/*
	 * RFC 4306, Sect. 3.4: possible zero padding for public value to
	 * match the length of the prime.
	 */
	FUNC5(msg, data->dh->prime_len - FUNC4(pv));
	FUNC7(msg, pv);
	FUNC3(pv);

	plen = (u8 *) FUNC5(msg, 0) - (u8 *) phdr;
	FUNC0(phdr->payload_length, plen);
	return 0;
}