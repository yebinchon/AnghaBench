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
 char* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int verb ; 

__attribute__((used)) static char*
FUNC5(SSL* ssl, size_t len)
{
	size_t got = 0;
	int r;
	char* data;
	if(len >= 0xfffffff0)
		return NULL; /* to protect against integer overflow in malloc*/
	data = FUNC3(len+1);
	if(!data) {
		if(verb) FUNC4("out of memory\n");
		return NULL;
	}
	while(got < len) {
		if((r = FUNC1(ssl, data+got, (int)(len-got))) <= 0) {
			if(FUNC0(ssl, r) == SSL_ERROR_ZERO_RETURN) {
				/* EOF */
				if(verb) FUNC4("could not SSL_read: unexpected EOF\n");
				FUNC2(data);
				return NULL;
			}
			if(verb) FUNC4("could not SSL_read\n");
			FUNC2(data);
			return NULL;
		}
		if(verb >= 2) FUNC4("at %d/%d\n", (int)got, (int)len);
		got += r;
	}
	if(verb>=2) FUNC4("read %d data\n", (int)len);
	data[len] = 0;
	return data;
}