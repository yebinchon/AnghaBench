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
 int AUTH_HTTPS_PORT ; 
 int AUTH_HTTP_PORT ; 
 char* FUNC0 (char*) ; 
 char* FUNC1 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 char* FUNC4 (char*,char,char) ; 
 char* FUNC5 (char*,char) ; 
 char* FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*,char*,int) ; 
 char* FUNC8 (char*,char*) ; 
 int FUNC9 (char*,char**,int) ; 

__attribute__((used)) static int
FUNC10(char* url, char** host, char** file, int* port, int* ssl)
{
	char* p = url;
	/* parse http://www.example.com/file.htm
	 * or http://127.0.0.1   (index.html)
	 * or https://[::1@1234]/a/b/c/d */
	*ssl = 1;
	*port = AUTH_HTTPS_PORT;

	/* parse http:// or https:// */
	if(FUNC7(p, "http://", 7) == 0) {
		p += 7;
		*ssl = 0;
		*port = AUTH_HTTP_PORT;
	} else if(FUNC7(p, "https://", 8) == 0) {
		p += 8;
	} else if(FUNC8(p, "://") && FUNC5(p, '/') > FUNC8(p, "://") &&
		FUNC5(p, ':') >= FUNC8(p, "://")) {
		char* uri = FUNC1(p, (size_t)(FUNC8(p, "://")-p));
		FUNC3("protocol %s:// not supported (for url %s)",
			uri?uri:"", p);
		FUNC2(uri);
		return 0;
	}

	/* parse hostname part */
	if(p[0] == '[') {
		char* end = FUNC5(p, ']');
		p++; /* skip over [ */
		if(end) {
			*host = FUNC1(p, (size_t)(end-p));
			if(!*host) return 0;
			p = end+1; /* skip over ] */
		} else {
			*host = FUNC0(p);
			if(!*host) return 0;
			p = end;
		}
	} else {
		char* end = FUNC4(p, ':', '/');
		if(end) {
			*host = FUNC1(p, (size_t)(end-p));
			if(!*host) return 0;
		} else {
			*host = FUNC0(p);
			if(!*host) return 0;
		}
		p = end; /* at next : or / or NULL */
	}

	/* parse port number */
	if(p && p[0] == ':') {
		char* end = NULL;
		*port = FUNC9(p+1, &end, 10);
		p = end;
	}

	/* parse filename part */
	while(p && *p == '/')
		p++;
	if(!p || p[0] == 0)
		*file = FUNC6("index.html");
	else	*file = FUNC6(p);
	if(!*file) {
		FUNC3("malloc failure");
		return 0;
	}
	return 1;
}