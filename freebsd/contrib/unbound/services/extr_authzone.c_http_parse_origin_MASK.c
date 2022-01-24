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
struct sldns_file_parse_state {int origin_len; int /*<<< orphan*/  origin; } ;
typedef  int /*<<< orphan*/  sldns_buffer ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned char) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC5(sldns_buffer* buf, struct sldns_file_parse_state* pstate)
{
	char* line = (char*)FUNC1(buf);
	if(FUNC4(line, "$ORIGIN", 7) == 0 &&
		FUNC0((unsigned char)line[7])) {
		int s;
		pstate->origin_len = sizeof(pstate->origin);
		s = FUNC2(FUNC3(line+8),
			pstate->origin, &pstate->origin_len);
		if(s) pstate->origin_len = 0;
		return 1;
	}
	return 0;
}