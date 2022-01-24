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
struct wpa_supplicant {TYPE_1__* conf; } ;
struct wpa_cred {char** domain; size_t num_domain; char* provisioning_sp; struct wpa_cred* next; } ;
struct TYPE_2__ {struct wpa_cred* cred; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (char*,char*,int) ; 
 struct wpa_cred* FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC5 (struct wpa_supplicant*,struct wpa_cred*) ; 

__attribute__((used)) static int FUNC6(struct wpa_supplicant *wpa_s,
						 char *cmd)
{
	int id;
	struct wpa_cred *cred, *prev;

	/* cmd: "<cred id>", "all", "sp_fqdn=<FQDN>", or
	 * "provisioning_sp=<FQDN> */
	if (FUNC1(cmd, "all") == 0) {
		FUNC4(MSG_DEBUG, "CTRL_IFACE: REMOVE_CRED all");
		cred = wpa_s->conf->cred;
		while (cred) {
			prev = cred;
			cred = cred->next;
			FUNC5(wpa_s, prev);
		}
		return 0;
	}

	if (FUNC2(cmd, "sp_fqdn=", 8) == 0) {
		FUNC4(MSG_DEBUG, "CTRL_IFACE: REMOVE_CRED SP FQDN '%s'",
			   cmd + 8);
		cred = wpa_s->conf->cred;
		while (cred) {
			prev = cred;
			cred = cred->next;
			if (prev->domain) {
				size_t i;
				for (i = 0; i < prev->num_domain; i++) {
					if (FUNC1(prev->domain[i], cmd + 8)
					    != 0)
						continue;
					FUNC5(wpa_s, prev);
					break;
				}
			}
		}
		return 0;
	}

	if (FUNC2(cmd, "provisioning_sp=", 16) == 0) {
		FUNC4(MSG_DEBUG, "CTRL_IFACE: REMOVE_CRED provisioning SP FQDN '%s'",
			   cmd + 16);
		cred = wpa_s->conf->cred;
		while (cred) {
			prev = cred;
			cred = cred->next;
			if (prev->provisioning_sp &&
			    FUNC1(prev->provisioning_sp, cmd + 16) == 0)
				FUNC5(wpa_s, prev);
		}
		return 0;
	}

	id = FUNC0(cmd);
	FUNC4(MSG_DEBUG, "CTRL_IFACE: REMOVE_CRED id=%d", id);

	cred = FUNC3(wpa_s->conf, id);
	return FUNC5(wpa_s, cred);
}