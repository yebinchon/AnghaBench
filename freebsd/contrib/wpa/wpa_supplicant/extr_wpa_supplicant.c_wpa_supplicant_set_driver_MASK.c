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
struct wpa_supplicant {int dummy; } ;
struct TYPE_2__ {char const* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 char* FUNC0 (char const*,char) ; 
 size_t FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,char const*,size_t) ; 
 scalar_t__ FUNC3 (struct wpa_supplicant*,int) ; 
 TYPE_1__** wpa_drivers ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_supplicant*,int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC5(struct wpa_supplicant *wpa_s,
				     const char *name)
{
	int i;
	size_t len;
	const char *pos, *driver = name;

	if (wpa_s == NULL)
		return -1;

	if (wpa_drivers[0] == NULL) {
		FUNC4(wpa_s, MSG_ERROR, "No driver interfaces build into "
			"wpa_supplicant");
		return -1;
	}

	if (name == NULL) {
		/* default to first driver in the list */
		return FUNC3(wpa_s, 0);
	}

	do {
		pos = FUNC0(driver, ',');
		if (pos)
			len = pos - driver;
		else
			len = FUNC1(driver);

		for (i = 0; wpa_drivers[i]; i++) {
			if (FUNC1(wpa_drivers[i]->name) == len &&
			    FUNC2(driver, wpa_drivers[i]->name, len) ==
			    0) {
				/* First driver that succeeds wins */
				if (FUNC3(wpa_s, i) == 0)
					return 0;
			}
		}

		driver = pos + 1;
	} while (pos);

	FUNC4(wpa_s, MSG_ERROR, "Unsupported driver '%s'", name);
	return -1;
}