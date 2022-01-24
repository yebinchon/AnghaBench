#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct dnsc_env {unsigned int keypairs_count; unsigned int signed_certs_count; TYPE_1__* signed_certs; TYPE_2__* certs; TYPE_3__* keypairs; } ;
struct config_strlist {int /*<<< orphan*/  str; struct config_strlist* next; } ;
struct config_file {struct config_strlist* dnscrypt_secret_key; } ;
struct TYPE_5__ {int* magic_query; int* es_version; TYPE_3__* keypair; } ;
typedef  TYPE_2__ dnsccert ;
struct TYPE_6__ {int /*<<< orphan*/  crypt_publickey; scalar_t__ crypt_secretkey; } ;
struct TYPE_4__ {int /*<<< orphan*/  version_major; int /*<<< orphan*/  magic_query; int /*<<< orphan*/  server_publickey; } ;
typedef  TYPE_3__ KeyPair ;

/* Variables and functions */
 int /*<<< orphan*/  VERB_OPS ; 
 int /*<<< orphan*/  crypto_box_PUBLICKEYBYTES ; 
 int /*<<< orphan*/  crypto_box_SECRETKEYBYTES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 char* FUNC1 (struct config_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/ ,int) ; 
 void* FUNC8 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int
FUNC11(struct dnsc_env *env, struct config_file *cfg)
{
	struct config_strlist *head;
	size_t cert_id, keypair_id;
	size_t c;
	char *nm;

	env->keypairs_count = 0U;
	for (head = cfg->dnscrypt_secret_key; head; head = head->next) {
		env->keypairs_count++;
	}

	env->keypairs = FUNC8(env->keypairs_count,
		sizeof *env->keypairs);
	env->certs = FUNC8(env->signed_certs_count,
		sizeof *env->certs);

	cert_id = 0U;
	keypair_id = 0U;
	for(head = cfg->dnscrypt_secret_key; head; head = head->next, keypair_id++) {
		char fingerprint[80];
		int found_cert = 0;
		KeyPair *current_keypair = &env->keypairs[keypair_id];
		nm = FUNC1(cfg, head->str);
		if(FUNC3(
				nm,
				(char *)(current_keypair->crypt_secretkey),
				crypto_box_SECRETKEYBYTES) != 0) {
			FUNC4("dnsc_parse_keys: failed to load %s: %s", head->str, FUNC9(errno));
		}
		FUNC10(VERB_OPS, "Loaded key %s", head->str);
		if (FUNC0(current_keypair->crypt_publickey,
			current_keypair->crypt_secretkey) != 0) {
			FUNC4("dnsc_parse_keys: could not generate public key from %s", head->str);
		}
		FUNC2(fingerprint, current_keypair->crypt_publickey);
		FUNC10(VERB_OPS, "Crypt public key fingerprint for %s: %s", head->str, fingerprint);
		// find the cert matching this key
		for(c = 0; c < env->signed_certs_count; c++) {
			if(FUNC6(current_keypair->crypt_publickey,
				env->signed_certs[c].server_publickey,
				crypto_box_PUBLICKEYBYTES) == 0) {
				dnsccert *current_cert = &env->certs[cert_id++];
				found_cert = 1;
				current_cert->keypair = current_keypair;
				FUNC7(current_cert->magic_query,
				       env->signed_certs[c].magic_query,
					sizeof env->signed_certs[c].magic_query);
				FUNC7(current_cert->es_version,
				       env->signed_certs[c].version_major,
				       sizeof env->signed_certs[c].version_major
				);
				FUNC2(fingerprint,
							current_cert->keypair->crypt_publickey);
				FUNC10(VERB_OPS, "Crypt public key fingerprint for %s: %s",
					head->str, fingerprint);
				FUNC10(VERB_OPS, "Using %s",
					FUNC5(current_cert->es_version));
#ifndef USE_DNSCRYPT_XCHACHA20
				if (current_cert->es_version[1] == 0x02) {
				    FUNC4("Certificate for XChacha20 but libsodium does not support it.");
				}
#endif

            		}
        	}
		if (!found_cert) {
		    FUNC4("dnsc_parse_keys: could not match certificate for key "
			       "%s. Unable to determine ES version.",
			       head->str);
		}
	}
	return cert_id;
}