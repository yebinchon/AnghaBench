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
struct wpa_cred {int id; int /*<<< orphan*/  sim_num; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_USER_SELECTED_SIM ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 char* FUNC0 (char*,char) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 struct wpa_cred* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct wpa_cred*) ; 
 scalar_t__ FUNC4 (char*,int,int /*<<< orphan*/ *,int*,char**) ; 
 scalar_t__ FUNC5 (struct wpa_cred*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,...) ; 

__attribute__((used)) static struct wpa_cred * FUNC7(FILE *f, int *line, int id)
{
	struct wpa_cred *cred;
	int errors = 0, end = 0;
	char buf[256], *pos, *pos2;

	FUNC6(MSG_MSGDUMP, "Line: %d - start of a new cred block", *line);
	cred = FUNC2(sizeof(*cred));
	if (cred == NULL)
		return NULL;
	cred->id = id;
	cred->sim_num = DEFAULT_USER_SELECTED_SIM;

	while (FUNC4(buf, sizeof(buf), f, line, &pos)) {
		if (FUNC1(pos, "}") == 0) {
			end = 1;
			break;
		}

		pos2 = FUNC0(pos, '=');
		if (pos2 == NULL) {
			FUNC6(MSG_ERROR, "Line %d: Invalid cred line "
				   "'%s'.", *line, pos);
			errors++;
			continue;
		}

		*pos2++ = '\0';
		if (*pos2 == '"') {
			if (FUNC0(pos2 + 1, '"') == NULL) {
				FUNC6(MSG_ERROR, "Line %d: invalid "
					   "quotation '%s'.", *line, pos2);
				errors++;
				continue;
			}
		}

		if (FUNC5(cred, pos, pos2, *line) < 0)
			errors++;
	}

	if (!end) {
		FUNC6(MSG_ERROR, "Line %d: cred block was not "
			   "terminated properly.", *line);
		errors++;
	}

	if (errors) {
		FUNC3(cred);
		cred = NULL;
	}

	return cred;
}