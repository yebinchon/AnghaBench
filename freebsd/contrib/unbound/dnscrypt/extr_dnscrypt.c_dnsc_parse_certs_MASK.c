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
struct dnsc_env {unsigned int signed_certs_count; unsigned int rotated_certs_count; void* signed_certs; void** rotated_certs; } ;
struct config_strlist {int /*<<< orphan*/  str; struct config_strlist* next; } ;
struct config_file {struct config_strlist* dnscrypt_provider_cert_rotated; struct config_strlist* dnscrypt_provider_cert; } ;
struct SignedCert {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VERB_OPS ; 
 char* FUNC0 (struct config_file*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (unsigned int,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct dnsc_env *env, struct config_file *cfg)
{
	struct config_strlist *head, *head2;
	size_t signed_cert_id;
	size_t rotated_cert_id;
	char *nm;

	env->signed_certs_count = 0U;
	env->rotated_certs_count = 0U;
	for (head = cfg->dnscrypt_provider_cert; head; head = head->next) {
		env->signed_certs_count++;
	}
	for (head = cfg->dnscrypt_provider_cert_rotated; head; head = head->next) {
		env->rotated_certs_count++;
	}
	env->signed_certs = FUNC3(env->signed_certs_count,
										  sizeof *env->signed_certs);

	env->rotated_certs = FUNC3(env->rotated_certs_count,
										  sizeof env->signed_certs);
	signed_cert_id = 0U;
	rotated_cert_id = 0U;
	for(head = cfg->dnscrypt_provider_cert; head; head = head->next, signed_cert_id++) {
		nm = FUNC0(cfg, head->str);
		if(FUNC1(
				nm,
				(char *)(env->signed_certs + signed_cert_id),
				sizeof(struct SignedCert)) != 0) {
			FUNC2("dnsc_parse_certs: failed to load %s: %s", head->str, FUNC5(errno));
		}
		for(head2 = cfg->dnscrypt_provider_cert_rotated; head2; head2 = head2->next) {
			if(FUNC4(head->str, head2->str) == 0) {
				*(env->rotated_certs + rotated_cert_id) = env->signed_certs + signed_cert_id;
				rotated_cert_id++;
				FUNC6(VERB_OPS, "Cert %s is rotated and will not be distributed via DNS", head->str);
				break;
			}
		}
		FUNC6(VERB_OPS, "Loaded cert %s", head->str);
	}
	return signed_cert_id;
}