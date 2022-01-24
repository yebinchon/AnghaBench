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
struct ikev2_responder_data {int /*<<< orphan*/  r_nonce_len; int /*<<< orphan*/  r_nonce; } ;
struct ikev2_payload_hdr {int /*<<< orphan*/  payload_length; scalar_t__ flags; int /*<<< orphan*/  next_payload; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct ikev2_payload_hdr* FUNC2 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ikev2_responder_data *data,
			  struct wpabuf *msg, u8 next_payload)
{
	struct ikev2_payload_hdr *phdr;
	size_t plen;

	FUNC1(MSG_DEBUG, "IKEV2: Adding Nr payload");

	/* Nr - RFC 4306, Sect. 3.9 */
	phdr = FUNC2(msg, sizeof(*phdr));
	phdr->next_payload = next_payload;
	phdr->flags = 0;
	FUNC3(msg, data->r_nonce, data->r_nonce_len);
	plen = (u8 *) FUNC2(msg, 0) - (u8 *) phdr;
	FUNC0(phdr->payload_length, plen);
	return 0;
}