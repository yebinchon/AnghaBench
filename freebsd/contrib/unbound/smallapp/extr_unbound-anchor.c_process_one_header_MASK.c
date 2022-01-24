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

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (char*,char*,int) ; 
 int verb ; 

__attribute__((used)) static int
FUNC3(char* buf, size_t* clen, int* chunked)
{
	if(verb>=2) FUNC1("header: '%s'\n", buf);
	if(FUNC2(buf, "HTTP/1.1 ", 9) == 0) {
		/* check returncode */
		if(buf[9] != '2') {
			if(verb) FUNC1("bad status %s\n", buf+9);
			return 0;
		}
	} else if(FUNC2(buf, "Content-Length: ", 16) == 0) {
		if(!*chunked)
			*clen = (size_t)FUNC0(buf+16);
	} else if(FUNC2(buf, "Transfer-Encoding: chunked", 19+7) == 0) {
		*clen = 0;
		*chunked = 1;
	}
	return 1;
}