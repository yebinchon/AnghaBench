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
struct tnc_if_imv {int imvID; void* path; void* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_ERROR ; 
 int TNC_MAX_IMV_ID ; 
 int /*<<< orphan*/  FUNC0 (struct tnc_if_imv*) ; 
 void* FUNC1 (char*) ; 
 struct tnc_if_imv* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static struct tnc_if_imv * FUNC4(int id, char *start, char *end,
					  int *error)
{
	struct tnc_if_imv *imv;
	char *pos, *pos2;

	if (id >= TNC_MAX_IMV_ID) {
		FUNC3(MSG_DEBUG, "TNC: Too many IMVs");
		return NULL;
	}

	imv = FUNC2(sizeof(*imv));
	if (imv == NULL) {
		*error = 1;
		return NULL;
	}

	imv->imvID = id;

	pos = start;
	FUNC3(MSG_DEBUG, "TNC: Configured IMV: %s", pos);
	if (pos + 1 >= end || *pos != '"') {
		FUNC3(MSG_ERROR, "TNC: Ignoring invalid IMV line '%s' "
			   "(no starting quotation mark)", start);
		FUNC0(imv);
		return NULL;
	}

	pos++;
	pos2 = pos;
	while (pos2 < end && *pos2 != '"')
		pos2++;
	if (pos2 >= end) {
		FUNC3(MSG_ERROR, "TNC: Ignoring invalid IMV line '%s' "
			   "(no ending quotation mark)", start);
		FUNC0(imv);
		return NULL;
	}
	*pos2 = '\0';
	FUNC3(MSG_DEBUG, "TNC: Name: '%s'", pos);
	imv->name = FUNC1(pos);

	pos = pos2 + 1;
	if (pos >= end || *pos != ' ') {
		FUNC3(MSG_ERROR, "TNC: Ignoring invalid IMV line '%s' "
			   "(no space after name)", start);
		FUNC0(imv);
		return NULL;
	}

	pos++;
	FUNC3(MSG_DEBUG, "TNC: IMV file: '%s'", pos);
	imv->path = FUNC1(pos);

	return imv;
}