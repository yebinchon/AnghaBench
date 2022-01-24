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
struct ikev2_payload_hdr {int /*<<< orphan*/  payload_length; scalar_t__ flags; int /*<<< orphan*/  next_payload; } ;
struct ikev2_initiator_data {int /*<<< orphan*/  IDi_len; int /*<<< orphan*/ * IDi; } ;

/* Variables and functions */
 int /*<<< orphan*/  ID_KEY_ID ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct ikev2_payload_hdr* FUNC2 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct ikev2_initiator_data *data,
			   struct wpabuf *msg, u8 next_payload)
{
	struct ikev2_payload_hdr *phdr;
	size_t plen;

	FUNC1(MSG_DEBUG, "IKEV2: Adding IDi payload");

	if (data->IDi == NULL) {
		FUNC1(MSG_INFO, "IKEV2: No IDi available");
		return -1;
	}

	/* IDi - RFC 4306, Sect. 3.5 */
	phdr = FUNC2(msg, sizeof(*phdr));
	phdr->next_payload = next_payload;
	phdr->flags = 0;
	FUNC4(msg, ID_KEY_ID);
	FUNC2(msg, 3); /* RESERVED */
	FUNC3(msg, data->IDi, data->IDi_len);
	plen = (u8 *) FUNC2(msg, 0) - (u8 *) phdr;
	FUNC0(phdr->payload_length, plen);
	return 0;
}