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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char const*,char const*) ; 
 size_t FUNC3 (char*) ; 
 int verb ; 

__attribute__((used)) static int
FUNC4(SSL* ssl, const char* str, const char* sec)
{
	char buf[1024];
	size_t l;
	if(sec) {
		FUNC2(buf, sizeof(buf), str, sec);
	} else {
		FUNC2(buf, sizeof(buf), "%s", str);
	}
	l = FUNC3(buf);
	if(l+2 >= sizeof(buf)) {
		if(verb) FUNC1("line too long\n");
		return 0;
	}
	if(verb >= 2) FUNC1("SSL_write: %s\n", buf);
	buf[l] = '\r';
	buf[l+1] = '\n';
	buf[l+2] = 0;
	/* add \r\n */
	if(FUNC0(ssl, buf, (int)FUNC3(buf)) <= 0) {
		if(verb) FUNC1("could not SSL_write %s", str);
		return 0;
	}
	return 1;
}