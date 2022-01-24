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
struct tls_connection {int /*<<< orphan*/  session; } ;
typedef  int /*<<< orphan*/  gnutls_mac_algorithm_t ;
typedef  scalar_t__ gnutls_kx_algorithm_t ;
typedef  int /*<<< orphan*/  gnutls_cipher_algorithm_t ;

/* Variables and functions */
 scalar_t__ GNUTLS_KX_RSA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (char*,size_t,char*,char const*,char const*,...) ; 
 scalar_t__ FUNC7 (size_t,int) ; 

int FUNC8(void *ssl_ctx, struct tls_connection *conn,
		   char *buf, size_t buflen)
{
	gnutls_cipher_algorithm_t cipher;
	gnutls_kx_algorithm_t kx;
	gnutls_mac_algorithm_t mac;
	const char *kx_str, *cipher_str, *mac_str;
	int res;

	cipher = FUNC0(conn->session);
	cipher_str = FUNC1(cipher);
	if (!cipher_str)
		cipher_str = "";

	kx = FUNC2(conn->session);
	kx_str = FUNC3(kx);
	if (!kx_str)
		kx_str = "";

	mac = FUNC4(conn->session);
	mac_str = FUNC5(mac);
	if (!mac_str)
		mac_str = "";

	if (kx == GNUTLS_KX_RSA)
		res = FUNC6(buf, buflen, "%s-%s", cipher_str, mac_str);
	else
		res = FUNC6(buf, buflen, "%s-%s-%s",
				  kx_str, cipher_str, mac_str);
	if (FUNC7(buflen, res))
		return -1;

	return 0;
}