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
typedef  int /*<<< orphan*/  RSA_METHOD ;
typedef  int /*<<< orphan*/  DH_METHOD ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 char* FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 char* FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

int
FUNC7(void *opt, int argc, char **argv)
{

    FUNC2();

    {
	const RSA_METHOD *m = FUNC4();
	if (m != NULL)
	    FUNC6("rsa: %s\n", FUNC5(m));
    }
    {
	const DH_METHOD *m = FUNC0();
	if (m != NULL)
	    FUNC6("dh: %s\n", FUNC1(m));
    }
#ifdef HAVE_OPENSSL
    {
	printf("ecdsa: ECDSA_METHOD-not-export\n");
    }
#else
    {
	FUNC6("ecdsa: hcrypto null\n");
    }
#endif
    {
	int ret = FUNC3();
	FUNC6("rand: %s\n", ret == 1 ? "ok" : "not available");
    }

    return 0;
}