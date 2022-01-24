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
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static int
FUNC3(sldns_buffer* buf)
{
	size_t i;
	for(i=FUNC1(buf); i<FUNC0(buf); i++) {
		/* there was a \r before the \n, but we ignore that */
		if((char)FUNC2(buf, i) == '\n')
			return 1;
	}
	return 0;
}