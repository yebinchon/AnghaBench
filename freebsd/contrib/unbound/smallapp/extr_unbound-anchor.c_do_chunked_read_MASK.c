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
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 char* FUNC7 (int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC9 (char*) ; 
 int verb ; 

__attribute__((used)) static BIO*
FUNC10(SSL* ssl)
{
	char buf[1024];
	size_t len;
	char* body;
	BIO* mem = FUNC1(FUNC2());
	if(verb>=3) FUNC6("do_chunked_read\n");
	if(!mem) {
		if(verb) FUNC6("out of memory\n");
		return NULL;
	}
	while(FUNC8(ssl, buf, sizeof(buf))) {
		/* read the chunked start line */
		if(verb>=2) FUNC6("chunk header: %s\n", buf);
		if(!FUNC5(buf, &len)) {
			FUNC0(mem);
			if(verb>=3) FUNC6("could not parse chunk header\n");
			return NULL;
		}
		if(verb>=2) FUNC6("chunk len: %d\n", (int)len);
		/* are we done? */
		if(len == 0) {
			char z = 0;
			/* skip end-of-chunk-trailer lines,
			 * until the empty line after that */
			do {
				if(!FUNC8(ssl, buf, sizeof(buf))) {
					FUNC0(mem);
					return NULL;
				}
			} while (FUNC9(buf) > 0);
			/* end of chunks, zero terminate it */
			if(FUNC3(mem, &z, 1) <= 0) {
				if(verb) FUNC6("out of memory\n");
				FUNC0(mem);
				return NULL;
			}
			return mem;
		}
		/* read the chunked body */
		body = FUNC7(ssl, len);
		if(!body) {
			FUNC0(mem);
			return NULL;
		}
		if(FUNC3(mem, body, (int)len) <= 0) {
			if(verb) FUNC6("out of memory\n");
			FUNC4(body);
			FUNC0(mem);
			return NULL;
		}
		FUNC4(body);
		/* skip empty line after data chunk */
		if(!FUNC8(ssl, buf, sizeof(buf))) {
			FUNC0(mem);
			return NULL;
		}
	}
	FUNC0(mem);
	return NULL;
}