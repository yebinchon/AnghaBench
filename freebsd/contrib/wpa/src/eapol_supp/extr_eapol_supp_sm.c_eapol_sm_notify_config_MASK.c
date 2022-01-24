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
struct TYPE_2__ {int /*<<< orphan*/  wps; int /*<<< orphan*/  workaround; int /*<<< orphan*/  fast_reauth; int /*<<< orphan*/  required_keys; int /*<<< orphan*/  accept_802_1x_keys; } ;
struct eapol_sm {int use_eap_proxy; scalar_t__ eap; TYPE_1__ conf; int /*<<< orphan*/  eap_proxy; struct eap_peer_config* config; } ;
struct eapol_config {int /*<<< orphan*/  external_sim; int /*<<< orphan*/  eap_disabled; int /*<<< orphan*/  workaround; int /*<<< orphan*/  fast_reauth; int /*<<< orphan*/  wps; int /*<<< orphan*/  required_keys; int /*<<< orphan*/  accept_802_1x_keys; } ;
struct eap_peer_config {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct eap_peer_config*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC5(struct eapol_sm *sm,
			    struct eap_peer_config *config,
			    const struct eapol_config *conf)
{
	if (sm == NULL)
		return;

	sm->config = config;
#ifdef CONFIG_EAP_PROXY
	sm->use_eap_proxy = eap_proxy_notify_config(sm->eap_proxy, config) > 0;
#endif /* CONFIG_EAP_PROXY */

	if (conf == NULL)
		return;

	sm->conf.accept_802_1x_keys = conf->accept_802_1x_keys;
	sm->conf.required_keys = conf->required_keys;
	sm->conf.fast_reauth = conf->fast_reauth;
	sm->conf.workaround = conf->workaround;
	sm->conf.wps = conf->wps;
#ifdef CONFIG_EAP_PROXY
	if (sm->use_eap_proxy) {
		/* Using EAP Proxy, so skip EAP state machine update */
		return;
	}
#endif /* CONFIG_EAP_PROXY */
	if (sm->eap) {
		FUNC2(sm->eap, conf->fast_reauth);
		FUNC4(sm->eap, conf->workaround);
		FUNC3(sm->eap, conf->eap_disabled);
		FUNC1(sm->eap, conf->external_sim);
	}
}