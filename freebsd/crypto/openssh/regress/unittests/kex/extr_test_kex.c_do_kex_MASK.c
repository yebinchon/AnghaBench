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
 int /*<<< orphan*/  KEY_DSA ; 
 int /*<<< orphan*/  KEY_ECDSA ; 
 int /*<<< orphan*/  KEY_ED25519 ; 
 int /*<<< orphan*/  KEY_RSA ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC1(char *kex)
{
	FUNC0(kex, KEY_RSA, 2048);
	FUNC0(kex, KEY_DSA, 1024);
#ifdef OPENSSL_HAS_ECC
	do_kex_with_key(kex, KEY_ECDSA, 256);
#endif
	FUNC0(kex, KEY_ED25519, 256);
}