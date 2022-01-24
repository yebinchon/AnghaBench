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
struct wpa_supplicant {scalar_t__ ext_work_id; } ;
struct wpa_external_work {char* type; scalar_t__ id; void* timeout; } ;

/* Variables and functions */
 void* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpa_external_work*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 
 int FUNC3 (char*,size_t,char*,scalar_t__) ; 
 scalar_t__ FUNC4 (size_t,int) ; 
 char* FUNC5 (char*,char) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 size_t FUNC7 (char*) ; 
 char* FUNC8 (char*,char*) ; 
 struct wpa_external_work* FUNC9 (int) ; 
 scalar_t__ FUNC10 (struct wpa_supplicant*,unsigned int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpa_external_work*) ; 
 int /*<<< orphan*/  wpas_ctrl_radio_work_cb ; 

__attribute__((used)) static int FUNC11(struct wpa_supplicant *wpa_s, char *cmd,
				    char *buf, size_t buflen)
{
	struct wpa_external_work *ework;
	char *pos, *pos2;
	size_t type_len;
	int ret;
	unsigned int freq = 0;

	/* format: <name> [freq=<MHz>] [timeout=<seconds>] */

	ework = FUNC9(sizeof(*ework));
	if (ework == NULL)
		return -1;

	pos = FUNC5(cmd, ' ');
	if (pos) {
		type_len = pos - cmd;
		pos++;

		pos2 = FUNC8(pos, "freq=");
		if (pos2)
			freq = FUNC0(pos2 + 5);

		pos2 = FUNC8(pos, "timeout=");
		if (pos2)
			ework->timeout = FUNC0(pos2 + 8);
	} else {
		type_len = FUNC7(cmd);
	}
	if (4 + type_len >= sizeof(ework->type))
		type_len = sizeof(ework->type) - 4 - 1;
	FUNC6(ework->type, "ext:", sizeof(ework->type));
	FUNC2(ework->type + 4, cmd, type_len);
	ework->type[4 + type_len] = '\0';

	wpa_s->ext_work_id++;
	if (wpa_s->ext_work_id == 0)
		wpa_s->ext_work_id++;
	ework->id = wpa_s->ext_work_id;

	if (FUNC10(wpa_s, freq, ework->type, 0, wpas_ctrl_radio_work_cb,
			   ework) < 0) {
		FUNC1(ework);
		return -1;
	}

	ret = FUNC3(buf, buflen, "%u", ework->id);
	if (FUNC4(buflen, ret))
		return -1;
	return ret;
}