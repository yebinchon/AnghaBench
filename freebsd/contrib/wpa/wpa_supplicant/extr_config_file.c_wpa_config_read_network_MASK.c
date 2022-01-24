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
struct wpa_ssid {int id; int /*<<< orphan*/  psk_list; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (char*,char) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 struct wpa_ssid* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_ssid*) ; 
 scalar_t__ FUNC5 (char*,int,int /*<<< orphan*/ *,int*,char**) ; 
 scalar_t__ FUNC6 (struct wpa_ssid*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct wpa_ssid*) ; 
 scalar_t__ FUNC8 (struct wpa_ssid*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int,...) ; 

__attribute__((used)) static struct wpa_ssid * FUNC10(FILE *f, int *line, int id)
{
	struct wpa_ssid *ssid;
	int errors = 0, end = 0;
	char buf[2000], *pos, *pos2;

	FUNC9(MSG_MSGDUMP, "Line: %d - start of a new network block",
		   *line);
	ssid = FUNC3(sizeof(*ssid));
	if (ssid == NULL)
		return NULL;
	FUNC0(&ssid->psk_list);
	ssid->id = id;

	FUNC7(ssid);

	while (FUNC5(buf, sizeof(buf), f, line, &pos)) {
		if (FUNC2(pos, "}") == 0) {
			end = 1;
			break;
		}

		pos2 = FUNC1(pos, '=');
		if (pos2 == NULL) {
			FUNC9(MSG_ERROR, "Line %d: Invalid SSID line "
				   "'%s'.", *line, pos);
			errors++;
			continue;
		}

		*pos2++ = '\0';
		if (*pos2 == '"') {
			if (FUNC1(pos2 + 1, '"') == NULL) {
				FUNC9(MSG_ERROR, "Line %d: invalid "
					   "quotation '%s'.", *line, pos2);
				errors++;
				continue;
			}
		}

		if (FUNC6(ssid, pos, pos2, *line) < 0)
			errors++;
	}

	if (!end) {
		FUNC9(MSG_ERROR, "Line %d: network block was not "
			   "terminated properly.", *line);
		errors++;
	}

	errors += FUNC8(ssid, *line);

	if (errors) {
		FUNC4(ssid);
		ssid = NULL;
	}

	return ssid;
}