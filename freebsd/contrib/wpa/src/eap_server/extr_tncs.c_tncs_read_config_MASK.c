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
struct tncs_global {struct tnc_if_imv* imv; } ;
struct tnc_if_imv {struct tnc_if_imv* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  TNC_CONFIG_FILE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,size_t*) ; 
 scalar_t__ FUNC2 (char*,char*,int) ; 
 struct tnc_if_imv* FUNC3 (int /*<<< orphan*/ ,char*,char*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct tncs_global *global)
{
	char *config, *end, *pos, *line_end;
	size_t config_len;
	struct tnc_if_imv *imv, *last;
	int id = 0;

	last = NULL;

	config = FUNC1(TNC_CONFIG_FILE, &config_len);
	if (config == NULL) {
		FUNC4(MSG_ERROR, "TNC: Could not open TNC configuration "
			   "file '%s'", TNC_CONFIG_FILE);
		return -1;
	}

	end = config + config_len;
	for (pos = config; pos < end; pos = line_end + 1) {
		line_end = pos;
		while (*line_end != '\n' && *line_end != '\r' &&
		       line_end < end)
			line_end++;
		*line_end = '\0';

		if (FUNC2(pos, "IMV ", 4) == 0) {
			int error = 0;

			imv = FUNC3(id++, pos + 4, line_end, &error);
			if (error)
				return -1;
			if (imv) {
				if (last == NULL)
					global->imv = imv;
				else
					last->next = imv;
				last = imv;
			}
		}
	}

	FUNC0(config);

	return 0;
}