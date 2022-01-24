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
 int SSH_DIGEST_SHA1 ; 
 int SSH_DIGEST_SHA256 ; 
 int SSH_DIGEST_SHA512 ; 
 int FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 

__attribute__((used)) static int
FUNC2(const char *alg)
{
	int r;

	if ((r = FUNC0(alg)) != -1)
		return r;
	if (FUNC1(alg, "ssh-rsa-cert-v01@openssh.com") == 0)
		return SSH_DIGEST_SHA1;
	if (FUNC1(alg, "rsa-sha2-256-cert-v01@openssh.com") == 0)
		return SSH_DIGEST_SHA256;
	if (FUNC1(alg, "rsa-sha2-512-cert-v01@openssh.com") == 0)
		return SSH_DIGEST_SHA512;
	return -1;
}