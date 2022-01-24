#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sshkey {TYPE_1__* cert; } ;
struct TYPE_7__ {int /*<<< orphan*/  fingerprint_hash; } ;
struct TYPE_6__ {char* auth_method_info; struct sshkey* auth_method_key; } ;
struct TYPE_5__ {struct sshkey const* signature_key; scalar_t__ serial; int /*<<< orphan*/  key_id; } ;
typedef  TYPE_2__ Authctxt ;

/* Variables and functions */
 int /*<<< orphan*/  SSH_FP_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_3__ options ; 
 char* FUNC1 (struct sshkey const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sshkey const*) ; 
 int /*<<< orphan*/  FUNC3 (struct sshkey const*) ; 
 int /*<<< orphan*/  FUNC4 (char**,char*,int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static char *
FUNC5(Authctxt *authctxt)
{
	const struct sshkey *key = authctxt->auth_method_key;
	const char *methinfo = authctxt->auth_method_info;
	char *fp, *ret = NULL;

	if (key == NULL)
		return NULL;

	if (FUNC2(key)) {
		fp = FUNC1(key->cert->signature_key,
		    options.fingerprint_hash, SSH_FP_DEFAULT);
		FUNC4(&ret, "%s ID %s (serial %llu) CA %s %s%s%s",
		    FUNC3(key), key->cert->key_id,
		    (unsigned long long)key->cert->serial,
		    FUNC3(key->cert->signature_key),
		    fp == NULL ? "(null)" : fp,
		    methinfo == NULL ? "" : ", ",
		    methinfo == NULL ? "" : methinfo);
		FUNC0(fp);
	} else {
		fp = FUNC1(key, options.fingerprint_hash,
		    SSH_FP_DEFAULT);
		FUNC4(&ret, "%s %s%s%s", FUNC3(key),
		    fp == NULL ? "(null)" : fp,
		    methinfo == NULL ? "" : ", ",
		    methinfo == NULL ? "" : methinfo);
		FUNC0(fp);
	}
	return ret;
}