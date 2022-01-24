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
typedef  int /*<<< orphan*/  u8 ;
struct eap_sm {int /*<<< orphan*/  ssl_ctx; } ;
struct TYPE_2__ {int /*<<< orphan*/  conn; } ;
struct eap_fast_data {int provisioning_allowed; TYPE_1__ ssl; } ;

/* Variables and functions */
 int EAP_FAST_PROV_AUTH ; 
 int EAP_FAST_PROV_UNAUTH ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  TLS_CIPHER_AES128_SHA ; 
 int /*<<< orphan*/  TLS_CIPHER_AES256_SHA ; 
 int /*<<< orphan*/  TLS_CIPHER_ANON_DH_AES128_SHA ; 
 int /*<<< orphan*/  TLS_CIPHER_NONE ; 
 int /*<<< orphan*/  TLS_CIPHER_RC4_SHA ; 
 int /*<<< orphan*/  TLS_CIPHER_RSA_DHE_AES128_SHA ; 
 int /*<<< orphan*/  TLS_CIPHER_RSA_DHE_AES256_SHA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC2(struct eap_sm *sm,
					     struct eap_fast_data *data)
{
	u8 ciphers[7];
	int count = 0;

	if (data->provisioning_allowed & EAP_FAST_PROV_UNAUTH) {
		FUNC1(MSG_DEBUG, "EAP-FAST: Enabling unauthenticated "
			   "provisioning TLS cipher suites");
		ciphers[count++] = TLS_CIPHER_ANON_DH_AES128_SHA;
	}

	if (data->provisioning_allowed & EAP_FAST_PROV_AUTH) {
		FUNC1(MSG_DEBUG, "EAP-FAST: Enabling authenticated "
			   "provisioning TLS cipher suites");
		ciphers[count++] = TLS_CIPHER_RSA_DHE_AES256_SHA;
		ciphers[count++] = TLS_CIPHER_RSA_DHE_AES128_SHA;
		ciphers[count++] = TLS_CIPHER_AES256_SHA;
		ciphers[count++] = TLS_CIPHER_AES128_SHA;
		ciphers[count++] = TLS_CIPHER_RC4_SHA;
	}

	ciphers[count++] = TLS_CIPHER_NONE;

	if (FUNC0(sm->ssl_ctx, data->ssl.conn,
					   ciphers)) {
		FUNC1(MSG_INFO, "EAP-FAST: Could not configure TLS "
			   "cipher suites for provisioning");
		return -1;
	}

	return 0;
}