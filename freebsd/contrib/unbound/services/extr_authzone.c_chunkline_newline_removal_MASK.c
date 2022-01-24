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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  sldns_buffer ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(sldns_buffer* buf)
{
	size_t i, end=FUNC0(buf);
	for(i=0; i<end; i++) {
		char c = (char)FUNC1(buf, i);
		if(c == '\n' && i==end-1) {
			FUNC3(buf, i, 0);
			FUNC2(buf, end-1);
			return;
		}
		if(c == '\n')
			FUNC3(buf, i, (uint8_t)' ');
	}
}