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
typedef  int u8 ;
struct eap_ssl_data {scalar_t__ state; int /*<<< orphan*/  tmpbuf; int /*<<< orphan*/ * tls_in; } ;

/* Variables and functions */
 int EAP_TLS_FLAGS_LENGTH_INCLUDED ; 
 int EAP_TLS_FLAGS_MORE_FRAGMENTS ; 
 scalar_t__ FRAG_ACK ; 
 scalar_t__ MSG ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 scalar_t__ WAIT_FRAG_ACK ; 
 unsigned int FUNC0 (int const*) ; 
 scalar_t__ FUNC1 (struct eap_ssl_data*,int const*,int) ; 
 scalar_t__ FUNC2 (struct eap_ssl_data*,int,unsigned int,int const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int const*,int) ; 

__attribute__((used)) static int FUNC6(struct eap_ssl_data *data, u8 flags,
				     const u8 **pos, size_t *left)
{
	unsigned int tls_msg_len = 0;
	const u8 *end = *pos + *left;

	FUNC3(MSG_MSGDUMP, "SSL: Received data", *pos, *left);

	if (flags & EAP_TLS_FLAGS_LENGTH_INCLUDED) {
		if (*left < 4) {
			FUNC4(MSG_INFO, "SSL: Short frame with TLS "
				   "length");
			return -1;
		}
		tls_msg_len = FUNC0(*pos);
		FUNC4(MSG_DEBUG, "SSL: TLS Message Length: %d",
			   tls_msg_len);
		*pos += 4;
		*left -= 4;

		if (*left > tls_msg_len) {
			FUNC4(MSG_INFO, "SSL: TLS Message Length (%d "
				   "bytes) smaller than this fragment (%d "
				   "bytes)", (int) tls_msg_len, (int) *left);
			return -1;
		}
	}

	FUNC4(MSG_DEBUG, "SSL: Received packet: Flags 0x%x "
		   "Message Length %u", flags, tls_msg_len);

	if (data->state == WAIT_FRAG_ACK) {
		if (*left != 0) {
			FUNC4(MSG_DEBUG, "SSL: Unexpected payload in "
				   "WAIT_FRAG_ACK state");
			return -1;
		}
		FUNC4(MSG_DEBUG, "SSL: Fragment acknowledged");
		return 1;
	}

	if (data->tls_in &&
	    FUNC1(data, *pos, end - *pos) < 0)
		return -1;

	if (flags & EAP_TLS_FLAGS_MORE_FRAGMENTS) {
		if (FUNC2(data, flags, tls_msg_len,
						    *pos, end - *pos) < 0)
			return -1;

		data->state = FRAG_ACK;
		return 1;
	}

	if (data->state == FRAG_ACK) {
		FUNC4(MSG_DEBUG, "SSL: All fragments received");
		data->state = MSG;
	}

	if (data->tls_in == NULL) {
		/* Wrap unfragmented messages as wpabuf without extra copy */
		FUNC5(&data->tmpbuf, *pos, end - *pos);
		data->tls_in = &data->tmpbuf;
	}

	return 0;
}