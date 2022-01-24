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
typedef  unsigned char ldns_key ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 scalar_t__ FUNC2 (unsigned char*) ; 
 unsigned char* FUNC3 (unsigned char*) ; 
 scalar_t__ FUNC4 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

void
FUNC6(ldns_key *key)
{
	unsigned char* hmac;
	if (FUNC4(key)) {
		FUNC5(FUNC4(key));
	}
#ifdef HAVE_SSL
	if (ldns_key_evp_key(key)) {
		EVP_PKEY_free(ldns_key_evp_key(key));
	}
#endif /* HAVE_SSL */
	if (FUNC3(key)) {
		hmac = FUNC3(key);
		FUNC1(hmac);
	}
	FUNC1(key);
}