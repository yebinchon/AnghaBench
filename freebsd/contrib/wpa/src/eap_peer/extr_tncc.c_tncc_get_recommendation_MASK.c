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
typedef  enum tncc_process_res { ____Placeholder_tncc_process_res } tncc_process_res ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int TNCCS_RECOMMENDATION_ALLOW ; 
 int TNCCS_RECOMMENDATION_ERROR ; 
 int TNCCS_RECOMMENDATION_ISOLATE ; 
 int TNCCS_RECOMMENDATION_NONE ; 
 scalar_t__ FUNC0 (char*,char*) ; 
 char* FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static enum tncc_process_res FUNC3(char *start)
{
	char *pos, *pos2, saved;
	int recom;

	pos = FUNC1(start, "<TNCCS-Recommendation ");
	if (pos == NULL)
		return TNCCS_RECOMMENDATION_ERROR;

	pos += 21;
	pos = FUNC1(pos, " type=");
	if (pos == NULL)
		return TNCCS_RECOMMENDATION_ERROR;
	pos += 6;

	if (*pos == '"')
		pos++;

	pos2 = pos;
	while (*pos2 != '\0' && *pos2 != '"' && *pos2 != '>')
		pos2++;

	if (*pos2 == '\0')
		return TNCCS_RECOMMENDATION_ERROR;

	saved = *pos2;
	*pos2 = '\0';
	FUNC2(MSG_DEBUG, "TNC: TNCCS-Recommendation: '%s'", pos);

	recom = TNCCS_RECOMMENDATION_ERROR;
	if (FUNC0(pos, "allow") == 0)
		recom = TNCCS_RECOMMENDATION_ALLOW;
	else if (FUNC0(pos, "none") == 0)
		recom = TNCCS_RECOMMENDATION_NONE;
	else if (FUNC0(pos, "isolate") == 0)
		recom = TNCCS_RECOMMENDATION_ISOLATE;

	*pos2 = saved;

	return recom;
}