#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sshkey {int type; } ;
struct TYPE_2__ {int /*<<< orphan*/  pubkey_key_types; } ;

/* Variables and functions */
#define  KEY_RSA 129 
#define  KEY_RSA_CERT 128 
 int FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ options ; 
 char* FUNC1 (struct sshkey*) ; 

__attribute__((used)) static int
FUNC2(struct sshkey *key)
{
	if (FUNC0(FUNC1(key),
	    options.pubkey_key_types, 0) == 1)
		return 1;

	/* RSA keys/certs might be allowed by alternate signature types */
	switch (key->type) {
	case KEY_RSA:
		if (FUNC0("rsa-sha2-512",
		    options.pubkey_key_types, 0) == 1)
			return 1;
		if (FUNC0("rsa-sha2-256",
		    options.pubkey_key_types, 0) == 1)
			return 1;
		break;
	case KEY_RSA_CERT:
		if (FUNC0("rsa-sha2-512-cert-v01@openssh.com",
		    options.pubkey_key_types, 0) == 1)
			return 1;
		if (FUNC0("rsa-sha2-256-cert-v01@openssh.com",
		    options.pubkey_key_types, 0) == 1)
			return 1;
		break;
	}
	return 0;
}