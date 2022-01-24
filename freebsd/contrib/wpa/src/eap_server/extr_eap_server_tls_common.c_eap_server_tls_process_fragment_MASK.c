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
typedef  int u32 ;
struct eap_ssl_data {int /*<<< orphan*/ * tls_in; } ;

/* Variables and functions */
 int EAP_TLS_FLAGS_LENGTH_INCLUDED ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int const*,size_t) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct eap_ssl_data *data,
					   u8 flags, u32 message_length,
					   const u8 *buf, size_t len)
{
	/* Process a fragment that is not the last one of the message */
	if (data->tls_in == NULL && !(flags & EAP_TLS_FLAGS_LENGTH_INCLUDED)) {
		FUNC0(MSG_DEBUG, "SSL: No Message Length field in a "
			   "fragmented packet");
		return -1;
	}

	if (data->tls_in == NULL) {
		/* First fragment of the message */

		/* Limit length to avoid rogue peers from causing large
		 * memory allocations. */
		if (message_length > 65536) {
			FUNC0(MSG_INFO, "SSL: Too long TLS fragment (size"
				   " over 64 kB)");
			return -1;
		}

		if (len > message_length) {
			FUNC0(MSG_INFO, "SSL: Too much data (%d bytes) in "
				   "first fragment of frame (TLS Message "
				   "Length %d bytes)",
				   (int) len, (int) message_length);
			return -1;
		}

		data->tls_in = FUNC1(message_length);
		if (data->tls_in == NULL) {
			FUNC0(MSG_DEBUG, "SSL: No memory for message");
			return -1;
		}
		FUNC2(data->tls_in, buf, len);
		FUNC0(MSG_DEBUG, "SSL: Received %lu bytes in first "
			   "fragment, waiting for %lu bytes more",
			   (unsigned long) len,
			   (unsigned long) FUNC3(data->tls_in));
	}

	return 0;
}