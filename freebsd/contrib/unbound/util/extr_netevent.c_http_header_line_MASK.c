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
typedef  int /*<<< orphan*/  sldns_buffer ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char*
FUNC6(sldns_buffer* buf)
{
	char* result = (char*)FUNC0(buf);
	size_t i;
	for(i=FUNC2(buf); i<FUNC1(buf); i++) {
		/* terminate the string on the \r */
		if((char)FUNC3(buf, i) == '\r')
			FUNC5(buf, i, 0);
		/* terminate on the \n and skip past the it and done */
		if((char)FUNC3(buf, i) == '\n') {
			FUNC5(buf, i, 0);
			FUNC4(buf, i+1);
			return result;
		}
	}
	return NULL;
}