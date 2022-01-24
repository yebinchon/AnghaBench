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
struct TYPE_2__ {int /*<<< orphan*/ * ocsp_stapling_response; } ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 char* FUNC0 (size_t) ; 
 int SSL_TLSEXT_ERR_ALERT_FATAL ; 
 int SSL_TLSEXT_ERR_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,size_t) ; 
 char* FUNC4 (int /*<<< orphan*/ *,size_t*) ; 
 TYPE_1__* tls_global ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC6(SSL *s, void *arg)
{
	char *tmp;
	char *resp;
	size_t len;

	if (tls_global->ocsp_stapling_response == NULL) {
		FUNC5(MSG_DEBUG, "OpenSSL: OCSP status callback - no response configured");
		return SSL_TLSEXT_ERR_OK;
	}

	resp = FUNC4(tls_global->ocsp_stapling_response, &len);
	if (resp == NULL) {
		FUNC5(MSG_DEBUG, "OpenSSL: OCSP status callback - could not read response file");
		/* TODO: Build OCSPResponse with responseStatus = internalError
		 */
		return SSL_TLSEXT_ERR_OK;
	}
	FUNC5(MSG_DEBUG, "OpenSSL: OCSP status callback - send cached response");
	tmp = FUNC0(len);
	if (tmp == NULL) {
		FUNC2(resp);
		return SSL_TLSEXT_ERR_ALERT_FATAL;
	}

	FUNC3(tmp, resp, len);
	FUNC2(resp);
	FUNC1(s, tmp, len);

	return SSL_TLSEXT_ERR_OK;
}