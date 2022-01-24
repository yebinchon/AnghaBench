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
typedef  void* u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct wpabuf {int dummy; } ;
struct ikev2_responder_data {int /*<<< orphan*/  r_spi; int /*<<< orphan*/  i_spi; } ;
struct ikev2_hdr {int /*<<< orphan*/  message_id; int /*<<< orphan*/  flags; void* exchange_type; int /*<<< orphan*/  version; void* next_payload; int /*<<< orphan*/  r_spi; int /*<<< orphan*/  i_spi; } ;

/* Variables and functions */
 int /*<<< orphan*/  IKEV2_HDR_RESPONSE ; 
 int /*<<< orphan*/  IKEV2_SPI_LEN ; 
 int /*<<< orphan*/  IKEV2_VERSION ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct ikev2_hdr* FUNC3 (struct wpabuf*,int) ; 

__attribute__((used)) static void FUNC4(struct ikev2_responder_data *data,
			    struct wpabuf *msg, u8 exchange_type,
			    u8 next_payload, u32 message_id)
{
	struct ikev2_hdr *hdr;

	FUNC2(MSG_DEBUG, "IKEV2: Adding HDR");

	/* HDR - RFC 4306, Sect. 3.1 */
	hdr = FUNC3(msg, sizeof(*hdr));
	FUNC1(hdr->i_spi, data->i_spi, IKEV2_SPI_LEN);
	FUNC1(hdr->r_spi, data->r_spi, IKEV2_SPI_LEN);
	hdr->next_payload = next_payload;
	hdr->version = IKEV2_VERSION;
	hdr->exchange_type = exchange_type;
	hdr->flags = IKEV2_HDR_RESPONSE;
	FUNC0(hdr->message_id, message_id);
}