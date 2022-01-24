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
typedef  int /*<<< orphan*/  u8 ;
typedef  void* gcry_cipher_hd_t ;

/* Variables and functions */
 int /*<<< orphan*/  GCRY_CIPHER_AES ; 
 int /*<<< orphan*/  GCRY_CIPHER_MODE_ECB ; 
 scalar_t__ GPG_ERR_NO_ERROR ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 scalar_t__ FUNC2 (void**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (void*,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void * FUNC5(const u8 *key, size_t len)
{
	gcry_cipher_hd_t hd;

	if (FUNC0())
		return NULL;

	if (FUNC2(&hd, GCRY_CIPHER_AES, GCRY_CIPHER_MODE_ECB, 0) !=
	    GPG_ERR_NO_ERROR) {
		FUNC4("cipher open failed\n");
		return NULL;
	}
	if (FUNC3(hd, key, len) != GPG_ERR_NO_ERROR) {
		FUNC4("setkey failed\n");
		FUNC1(hd);
		return NULL;
	}

	return hd;
}