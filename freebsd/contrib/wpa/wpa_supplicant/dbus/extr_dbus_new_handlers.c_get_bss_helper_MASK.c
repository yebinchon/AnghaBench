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
struct wpa_bss {int dummy; } ;
struct bss_handler_args {int /*<<< orphan*/  id; int /*<<< orphan*/  wpa_s; } ;
typedef  int /*<<< orphan*/  DBusError ;

/* Variables and functions */
 int /*<<< orphan*/  DBUS_ERROR_FAILED ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ) ; 
 struct wpa_bss* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct wpa_bss * FUNC3(struct bss_handler_args *args,
				       DBusError *error, const char *func_name)
{
	struct wpa_bss *res = FUNC1(args->wpa_s, args->id);

	if (!res) {
		FUNC2(MSG_ERROR, "%s[dbus]: no bss with id %d found",
			   func_name, args->id);
		FUNC0(error, DBUS_ERROR_FAILED,
			       "%s: BSS %d not found",
			       func_name, args->id);
	}

	return res;
}