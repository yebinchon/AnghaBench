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
struct eapol_sm {int heldPeriod; int startPeriod; int maxStart; int authPeriod; int timer_tick_enabled; void* initialize; void* force_authorized_update; int /*<<< orphan*/ * eap_proxy; struct eapol_ctx* ctx; void* use_eap_proxy; int /*<<< orphan*/ * eap; int /*<<< orphan*/  portControl; } ;
struct eapol_ctx {int /*<<< orphan*/  msg_ctx; int /*<<< orphan*/  cert_in_cb; int /*<<< orphan*/  wps; int /*<<< orphan*/  openssl_ciphers; int /*<<< orphan*/  pkcs11_module_path; int /*<<< orphan*/  pkcs11_engine_path; int /*<<< orphan*/  opensc_engine_path; } ;
struct eap_config {int /*<<< orphan*/  cert_in_cb; int /*<<< orphan*/  wps; int /*<<< orphan*/  openssl_ciphers; int /*<<< orphan*/  pkcs11_module_path; int /*<<< orphan*/  pkcs11_engine_path; int /*<<< orphan*/  opensc_engine_path; } ;
typedef  int /*<<< orphan*/  conf ;

/* Variables and functions */
 int /*<<< orphan*/  Auto ; 
 void* FALSE ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 void* TRUE ; 
 int /*<<< orphan*/ * FUNC0 (struct eapol_sm*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct eap_config*) ; 
 int /*<<< orphan*/ * FUNC1 (struct eapol_sm*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  eapol_cb ; 
 int /*<<< orphan*/  eapol_port_timers_tick ; 
 int /*<<< orphan*/  FUNC2 (struct eapol_sm*) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct eapol_sm*) ; 
 int /*<<< orphan*/  FUNC4 (struct eapol_sm*) ; 
 int /*<<< orphan*/  FUNC5 (struct eap_config*,int /*<<< orphan*/ ,int) ; 
 struct eapol_sm* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

struct eapol_sm *FUNC8(struct eapol_ctx *ctx)
{
	struct eapol_sm *sm;
	struct eap_config conf;
	sm = FUNC6(sizeof(*sm));
	if (sm == NULL)
		return NULL;
	sm->ctx = ctx;

	sm->portControl = Auto;

	/* Supplicant PAE state machine */
	sm->heldPeriod = 60;
	sm->startPeriod = 30;
	sm->maxStart = 3;

	/* Supplicant Backend state machine */
	sm->authPeriod = 30;

	FUNC5(&conf, 0, sizeof(conf));
	conf.opensc_engine_path = ctx->opensc_engine_path;
	conf.pkcs11_engine_path = ctx->pkcs11_engine_path;
	conf.pkcs11_module_path = ctx->pkcs11_module_path;
	conf.openssl_ciphers = ctx->openssl_ciphers;
	conf.wps = ctx->wps;
	conf.cert_in_cb = ctx->cert_in_cb;

	sm->eap = FUNC0(sm, &eapol_cb, sm->ctx->msg_ctx, &conf);
	if (sm->eap == NULL) {
		FUNC4(sm);
		return NULL;
	}

#ifdef CONFIG_EAP_PROXY
	sm->use_eap_proxy = FALSE;
	sm->eap_proxy = eap_proxy_init(sm, &eapol_cb, sm->ctx->msg_ctx);
	if (sm->eap_proxy == NULL) {
		wpa_printf(MSG_ERROR, "Unable to initialize EAP Proxy");
	}
#endif /* CONFIG_EAP_PROXY */

	/* Initialize EAPOL state machines */
	sm->force_authorized_update = TRUE;
	sm->initialize = TRUE;
	FUNC2(sm);
	sm->initialize = FALSE;
	FUNC2(sm);

	if (FUNC3(1, 0, eapol_port_timers_tick, NULL, sm) == 0)
		sm->timer_tick_enabled = 1;

	return sm;
}