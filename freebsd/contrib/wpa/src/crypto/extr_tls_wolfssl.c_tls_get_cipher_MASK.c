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
struct tls_connection {int /*<<< orphan*/  ssl; } ;
typedef  int /*<<< orphan*/  WOLFSSL_CIPHER ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(void *tls_ctx, struct tls_connection *conn,
		   char *buf, size_t buflen)
{
	WOLFSSL_CIPHER *cipher;
	const char *name;

	if (!conn || !conn->ssl)
		return -1;

	cipher = FUNC3(conn->ssl);
	if (!cipher)
		return -1;

	name = FUNC2(cipher);
	if (!name)
		return -1;

	if (FUNC0(name, "SSL_RSA_WITH_RC4_128_SHA") == 0)
		FUNC1(buf, "RC4-SHA", buflen);
	else if (FUNC0(name, "TLS_RSA_WITH_AES_128_CBC_SHA") == 0)
		FUNC1(buf, "AES128-SHA", buflen);
	else if (FUNC0(name, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA") == 0)
		FUNC1(buf, "DHE-RSA-AES128-SHA", buflen);
	else if (FUNC0(name, "TLS_DH_anon_WITH_AES_128_CBC_SHA") == 0)
		FUNC1(buf, "ADH-AES128-SHA", buflen);
	else if (FUNC0(name, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA") == 0)
		FUNC1(buf, "DHE-RSA-AES256-SHA", buflen);
	else if (FUNC0(name, "TLS_RSA_WITH_AES_256_CBC_SHA") == 0)
		FUNC1(buf, "AES256-SHA", buflen);
	else
		FUNC1(buf, name, buflen);

	return 0;
}