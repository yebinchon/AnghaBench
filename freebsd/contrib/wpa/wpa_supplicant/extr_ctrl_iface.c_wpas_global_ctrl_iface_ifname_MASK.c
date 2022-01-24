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
struct wpa_supplicant {int /*<<< orphan*/  ifname; struct wpa_supplicant* next; } ;
struct wpa_global {struct wpa_supplicant* ifaces; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*) ; 
 size_t FUNC2 (char*) ; 
 char* FUNC3 (struct wpa_supplicant*,char*,size_t*) ; 

__attribute__((used)) static char * FUNC4(struct wpa_global *global,
					    const char *ifname,
					    char *cmd, size_t *resp_len)
{
	struct wpa_supplicant *wpa_s;

	for (wpa_s = global->ifaces; wpa_s; wpa_s = wpa_s->next) {
		if (FUNC0(ifname, wpa_s->ifname) == 0)
			break;
	}

	if (wpa_s == NULL) {
		char *resp = FUNC1("FAIL-NO-IFNAME-MATCH\n");
		if (resp)
			*resp_len = FUNC2(resp);
		else
			*resp_len = 1;
		return resp;
	}

	return FUNC3(wpa_s, cmd, resp_len);
}