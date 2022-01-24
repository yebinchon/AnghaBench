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
struct wpa_supplicant {struct wpabuf* ric_ies; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*) ; 
 struct wpabuf* FUNC2 (char const*) ; 

__attribute__((used)) static int FUNC3(struct wpa_supplicant *wpa_s,
				   const char *cmd)
{
	struct wpabuf *ric_ies;

	if (*cmd == '\0' || FUNC0(cmd, "\"\"") == 0) {
		FUNC1(wpa_s->ric_ies);
		wpa_s->ric_ies = NULL;
		return 0;
	}

	ric_ies = FUNC2(cmd);
	if (!ric_ies)
		return -1;

	FUNC1(wpa_s->ric_ies);
	wpa_s->ric_ies = ric_ies;

	return 0;
}