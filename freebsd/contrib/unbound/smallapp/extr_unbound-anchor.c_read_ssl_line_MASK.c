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
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 scalar_t__ SSL_ERROR_ZERO_RETURN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ verb ; 

__attribute__((used)) static int
FUNC3(SSL* ssl, char* buf, size_t len)
{
	size_t n = 0;
	int r;
	int endnl = 0;
	while(1) {
		if(n >= len) {
			if(verb) FUNC2("line too long\n");
			return 0;
		}
		if((r = FUNC1(ssl, buf+n, 1)) <= 0) {
			if(FUNC0(ssl, r) == SSL_ERROR_ZERO_RETURN) {
				/* EOF */
				break;
			}
			if(verb) FUNC2("could not SSL_read\n");
			return 0;
		}
		if(endnl && buf[n] == '\n') {
			break;
		} else if(endnl) {
			/* bad data */
			if(verb) FUNC2("error: stray linefeeds\n");
			return 0;
		} else if(buf[n] == '\r') {
			/* skip \r, and also \n on the wire */
			endnl = 1;
			continue;
		} else if(buf[n] == '\n') {
			/* skip the \n, we are done */
			break;
		} else n++;
	}
	buf[n] = 0;
	return 1;
}