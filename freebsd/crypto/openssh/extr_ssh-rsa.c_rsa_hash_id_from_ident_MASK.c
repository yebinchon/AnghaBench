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
 scalar_t__ FUNC0 (char const*,char*) ; 

__attribute__((used)) static int
FUNC1(const char *ident)
{
	if (FUNC0(ident, "ssh-rsa") == 0)
		return SSH_DIGEST_SHA1;
	if (FUNC0(ident, "rsa-sha2-256") == 0)
		return SSH_DIGEST_SHA256;
	if (FUNC0(ident, "rsa-sha2-512") == 0)
		return SSH_DIGEST_SHA512;
	return -1;
}