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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 

void
FUNC1(void)
{
	FUNC0("curve25519-sha256@libssh.org");
#ifdef OPENSSL_HAS_ECC
	do_kex("ecdh-sha2-nistp256");
	do_kex("ecdh-sha2-nistp384");
	do_kex("ecdh-sha2-nistp521");
#endif
	FUNC0("diffie-hellman-group-exchange-sha256");
	FUNC0("diffie-hellman-group-exchange-sha1");
	FUNC0("diffie-hellman-group14-sha1");
	FUNC0("diffie-hellman-group1-sha1");
}