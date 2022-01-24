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
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/  const* FUNC0 () ; 
 int /*<<< orphan*/  const* FUNC1 () ; 
 int /*<<< orphan*/  const* FUNC2 () ; 
 int /*<<< orphan*/  const* FUNC3 () ; 
 int /*<<< orphan*/  const* FUNC4 () ; 
 scalar_t__ FUNC5 (char*,char*) ; 

__attribute__((used)) static const EVP_MD *
FUNC6(char *name)
{
	/* these are the mandatory algorithms from RFC4635 */
	/* The optional algorithms are not yet implemented */
	if (FUNC5(name, "hmac-sha512.") == 0) {
#ifdef HAVE_EVP_SHA512
		return EVP_sha512();
#else
		return NULL;
#endif
	} else if (FUNC5(name, "hmac-shac384.") == 0) {
#ifdef HAVE_EVP_SHA384
		return EVP_sha384();
#else
		return NULL;
#endif
	} else if (FUNC5(name, "hmac-sha256.") == 0) {
#ifdef HAVE_EVP_SHA256
		return EVP_sha256();
#else
		return NULL;
#endif
	} else if (FUNC5(name, "hmac-sha1.") == 0) {
		return FUNC1();
	} else if (FUNC5(name, "hmac-md5.sig-alg.reg.int.") == 0) {
		return FUNC0();
	} else {
		return NULL;
	}
}