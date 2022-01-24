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
struct ikev2_initiator_data {scalar_t__ peer_auth; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 scalar_t__ PEER_AUTH_CERT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC2(struct ikev2_initiator_data *data,
			      const u8 *cert, size_t cert_len)
{
	u8 cert_encoding;

	if (cert == NULL) {
		if (data->peer_auth == PEER_AUTH_CERT) {
			FUNC1(MSG_INFO, "IKEV2: No Certificate received");
			return -1;
		}
		return 0;
	}

	if (cert_len < 1) {
		FUNC1(MSG_INFO, "IKEV2: No Cert Encoding field");
		return -1;
	}

	cert_encoding = cert[0];
	cert++;
	cert_len--;

	FUNC1(MSG_DEBUG, "IKEV2: Cert Encoding %d", cert_encoding);
	FUNC0(MSG_MSGDUMP, "IKEV2: Certificate Data", cert, cert_len);

	/* TODO: validate certificate */

	return 0;
}