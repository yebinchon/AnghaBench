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
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  sldns_buffer ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int) ; 
 scalar_t__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int 
FUNC6(FILE* in, sldns_buffer* buf, int* line, int spec) 
{
	int rdlen;
	FUNC4(buf);
	while((rdlen=FUNC2(in, buf, line, 1))) {
		if(rdlen == 1 && FUNC0((unsigned char)*FUNC3(buf))) {
			FUNC4(buf);
			continue;
		}
		if(rdlen != 1 || *FUNC3(buf) != (uint8_t)spec) {
			FUNC5(buf, 0);
			FUNC1("trusted-keys, line %d, expected %c", 
				*line, spec);
			return 0;
		}
		return 1;
	}
	FUNC1("trusted-keys, line %d, expected %c got EOF", *line, spec);
	return 0;
}