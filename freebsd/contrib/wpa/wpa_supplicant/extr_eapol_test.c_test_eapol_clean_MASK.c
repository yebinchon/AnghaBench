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
struct wpa_supplicant {int /*<<< orphan*/  conf; int /*<<< orphan*/ * ext_pw; int /*<<< orphan*/ * ctrl_iface; int /*<<< orphan*/  scard; int /*<<< orphan*/ * eapol; int /*<<< orphan*/ * wpa; } ;
struct extra_radius_attr {struct extra_radius_attr* next; struct extra_radius_attr* auth_server; struct extra_radius_attr* shared_secret; } ;
struct eapol_test_data {struct extra_radius_attr* extra_attrs; struct extra_radius_attr* radius_conf; struct extra_radius_attr* eap_identity; int /*<<< orphan*/ * last_recv_radius; int /*<<< orphan*/  last_eap_radius; int /*<<< orphan*/  radius; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct extra_radius_attr*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct eapol_test_data *e,
			     struct wpa_supplicant *wpa_s)
{
	struct extra_radius_attr *p, *prev;

	FUNC7(wpa_s->wpa);
	wpa_s->wpa = NULL;
	FUNC3(e->radius);
	FUNC9(e->last_eap_radius);
	FUNC4(e->last_recv_radius);
	e->last_recv_radius = NULL;
	FUNC2(e->eap_identity);
	e->eap_identity = NULL;
	FUNC0(wpa_s->eapol);
	wpa_s->eapol = NULL;
	if (e->radius_conf && e->radius_conf->auth_server) {
		FUNC2(e->radius_conf->auth_server->shared_secret);
		FUNC2(e->radius_conf->auth_server);
	}
	FUNC2(e->radius_conf);
	e->radius_conf = NULL;
	FUNC5(wpa_s->scard);
	if (wpa_s->ctrl_iface) {
		FUNC8(wpa_s->ctrl_iface);
		wpa_s->ctrl_iface = NULL;
	}

	FUNC1(wpa_s->ext_pw);
	wpa_s->ext_pw = NULL;

	FUNC6(wpa_s->conf);

	p = e->extra_attrs;
	while (p) {
		prev = p;
		p = p->next;
		FUNC2(prev);
	}
}