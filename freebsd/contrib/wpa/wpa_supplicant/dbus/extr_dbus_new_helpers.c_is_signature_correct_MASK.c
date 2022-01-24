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
struct wpa_dbus_method_desc {struct wpa_dbus_argument* args; } ;
struct wpa_dbus_argument {scalar_t__ dir; int /*<<< orphan*/  type; scalar_t__ name; } ;
typedef  int /*<<< orphan*/  DBusMessage ;

/* Variables and functions */
 scalar_t__ ARG_IN ; 
 int MAX_SIG_LEN ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (char*,size_t,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 

__attribute__((used)) static int FUNC4(DBusMessage *message,
				const struct wpa_dbus_method_desc *method_dsc)
{
	/* According to DBus documentation max length of signature is 255 */
#define MAX_SIG_LEN 256
	char registered_sig[MAX_SIG_LEN], *pos;
	const char *sig = FUNC0(message);
	int ret;
	const struct wpa_dbus_argument *arg;

	pos = registered_sig;
	*pos = '\0';

	for (arg = method_dsc->args; arg && arg->name; arg++) {
		if (arg->dir == ARG_IN) {
			size_t blen = registered_sig + MAX_SIG_LEN - pos;

			ret = FUNC1(pos, blen, "%s", arg->type);
			if (FUNC2(blen, ret))
				return 0;
			pos += ret;
		}
	}

	return !FUNC3(registered_sig, sig, MAX_SIG_LEN);
}