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
typedef  int /*<<< orphan*/  gnutls_x509_crt_t ;

/* Variables and functions */
 int /*<<< orphan*/  GNUTLS_VERIFY_DO_NOT_ALLOW_WILDCARDS ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,char const*,int) ; 

__attribute__((used)) static int FUNC3(gnutls_x509_crt_t cert, const char *match,
				   int full)
{
	int res = -1;

#if GNUTLS_VERSION_NUMBER >= 0x030300
	if (full)
		res = gnutls_x509_crt_check_hostname2(
			cert, match,
			GNUTLS_VERIFY_DO_NOT_ALLOW_WILDCARDS);
#endif /* >= 3.3.0 */
	if (res == -1)
		res = FUNC0(cert, match);

	FUNC2(MSG_DEBUG, "TLS: Match domain against %s%s --> res=%d",
		   full ? "": "suffix ", match, res);
	return res;
}