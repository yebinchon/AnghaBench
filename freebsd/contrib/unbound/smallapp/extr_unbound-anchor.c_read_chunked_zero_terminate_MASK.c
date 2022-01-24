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
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int verb ; 

__attribute__((used)) static char*
FUNC6(SSL* ssl, size_t* len)
{
	/* do the chunked version */
	BIO* tmp = FUNC2(ssl);
	char* data, *d = NULL;
	size_t l;
	if(!tmp) {
		if(verb) FUNC5("could not read from https\n");
		return NULL;
	}
	l = (size_t)FUNC1(tmp, &d);
	if(verb>=2) FUNC5("chunked data is %d\n", (int)l);
	if(l == 0 || d == NULL) {
		if(verb) FUNC5("out of memory\n");
		return NULL;
	}
	*len = l-1;
	data = (char*)FUNC3(l);
	if(data == NULL) {
		if(verb) FUNC5("out of memory\n");
		return NULL;
	}
	FUNC4(data, d, l);
	FUNC0(tmp);
	return data;
}