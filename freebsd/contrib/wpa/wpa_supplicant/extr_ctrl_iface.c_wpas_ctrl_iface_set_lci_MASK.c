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
struct wpabuf {int dummy; } ;
struct wpa_supplicant {struct wpabuf* lci; int /*<<< orphan*/  lci_time; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*) ; 
 struct wpabuf* FUNC3 (char const*) ; 

__attribute__((used)) static int FUNC4(struct wpa_supplicant *wpa_s,
				   const char *cmd)
{
	struct wpabuf *lci;

	if (*cmd == '\0' || FUNC1(cmd, "\"\"") == 0) {
		FUNC2(wpa_s->lci);
		wpa_s->lci = NULL;
		return 0;
	}

	lci = FUNC3(cmd);
	if (!lci)
		return -1;

	if (FUNC0(&wpa_s->lci_time)) {
		FUNC2(lci);
		return -1;
	}

	FUNC2(wpa_s->lci);
	wpa_s->lci = lci;

	return 0;
}