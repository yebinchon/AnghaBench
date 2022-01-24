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
typedef  int /*<<< orphan*/  oid ;
typedef  int /*<<< orphan*/  gnutls_x509_crt_t ;

/* Variables and functions */
 int GNUTLS_E_REQUESTED_DATA_NOT_AVAILABLE ; 
 int /*<<< orphan*/  GNUTLS_KP_ANY ; 
 int /*<<< orphan*/  GNUTLS_KP_TLS_WWW_SERVER ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int FUNC0 (int /*<<< orphan*/ ,unsigned int,char*,size_t*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC3(gnutls_x509_crt_t cert)
{
	unsigned int i;

	for (i = 0; ; i++) {
		char oid[128];
		size_t oid_size = sizeof(oid);
		int res;

		res = FUNC0(cert, i, oid,
							  &oid_size, NULL);
		if (res == GNUTLS_E_REQUESTED_DATA_NOT_AVAILABLE) {
			if (i == 0) {
				/* No EKU - assume any use allowed */
				return 1;
			}
			break;
		}

		if (res < 0) {
			FUNC2(MSG_INFO, "GnuTLS: Failed to get EKU");
			return 0;
		}

		FUNC2(MSG_DEBUG, "GnuTLS: Certificate purpose: %s", oid);
		if (FUNC1(oid, GNUTLS_KP_TLS_WWW_SERVER) == 0 ||
		    FUNC1(oid, GNUTLS_KP_ANY) == 0)
			return 1;
	}

	return 0;
}