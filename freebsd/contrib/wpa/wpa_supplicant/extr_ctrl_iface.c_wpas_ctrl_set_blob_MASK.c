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
struct wpa_supplicant {int /*<<< orphan*/  conf; } ;
struct wpa_config_blob {size_t len; int /*<<< orphan*/ * data; int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * FUNC1 (size_t) ; 
 char* FUNC2 (char*,char) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 size_t FUNC4 (char*) ; 
 struct wpa_config_blob* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct wpa_config_blob*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct wpa_config_blob*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC9(struct wpa_supplicant *wpa_s, char *pos)
{
	char *name = pos;
	struct wpa_config_blob *blob;
	size_t len;

	pos = FUNC2(pos, ' ');
	if (pos == NULL)
		return -1;
	*pos++ = '\0';
	len = FUNC4(pos);
	if (len & 1)
		return -1;

	FUNC8(MSG_DEBUG, "CTRL: Set blob '%s'", name);
	blob = FUNC5(sizeof(*blob));
	if (blob == NULL)
		return -1;
	blob->name = FUNC3(name);
	blob->data = FUNC1(len / 2);
	if (blob->name == NULL || blob->data == NULL) {
		FUNC6(blob);
		return -1;
	}

	if (FUNC0(pos, blob->data, len / 2) < 0) {
		FUNC8(MSG_DEBUG, "CTRL: Invalid blob hex data");
		FUNC6(blob);
		return -1;
	}
	blob->len = len / 2;

	FUNC7(wpa_s->conf, blob);

	return 0;
}