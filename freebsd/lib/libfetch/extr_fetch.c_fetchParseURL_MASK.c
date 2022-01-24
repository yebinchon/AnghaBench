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
struct url {int netrcfd; char* scheme; char* host; int port; char* doc; int /*<<< orphan*/  pwd; int /*<<< orphan*/  user; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,char*) ; 
 int INT_MAX ; 
 int IPPORT_MAX ; 
 int MAXHOSTNAMELEN ; 
 int /*<<< orphan*/  SCHEME_HTTP ; 
 int /*<<< orphan*/  SCHEME_HTTPS ; 
 int /*<<< orphan*/  URL_BAD_PORT ; 
 int /*<<< orphan*/  URL_PWDLEN ; 
 int URL_SCHEMELEN ; 
 int /*<<< orphan*/  URL_USERLEN ; 
 struct url* FUNC1 (int,int) ; 
 char* FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct url*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char) ; 
 char* FUNC6 (int) ; 
 int /*<<< orphan*/ * FUNC7 (char const*,char) ; 
 scalar_t__ FUNC8 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC9 (char const*) ; 
 int FUNC10 (char const*) ; 
 char* FUNC11 (char const*,char*) ; 
 int FUNC12 (char const*,char*) ; 
 char* FUNC13 (char const*,char*) ; 
 void* FUNC14 (unsigned char) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

struct url *
FUNC16(const char *URL)
{
	char *doc;
	const char *p, *q;
	struct url *u;
	int i, n;

	/* allocate struct url */
	if ((u = FUNC1(1, sizeof(*u))) == NULL) {
		FUNC3();
		return (NULL);
	}
	u->netrcfd = -1;

	/* scheme name */
	if ((p = FUNC13(URL, ":/"))) {
                if (p - URL > URL_SCHEMELEN)
                        goto ouch;
                for (i = 0; URL + i < p; i++)
                        u->scheme[i] = FUNC14((unsigned char)URL[i]);
		URL = ++p;
		/*
		 * Only one slash: no host, leave slash as part of document
		 * Two slashes: host follows, strip slashes
		 */
		if (URL[1] == '/')
			URL = (p += 2);
	} else {
		p = URL;
	}
	if (!*URL || *URL == '/' || *URL == '.' ||
	    (u->scheme[0] == '\0' &&
		FUNC7(URL, '/') == NULL && FUNC7(URL, ':') == NULL))
		goto nohost;

	p = FUNC11(URL, "/@");
	if (p && *p == '@') {
		/* username */
		q = FUNC2(u->user, URL, URL_USERLEN);

		/* password */
		if (*q == ':')
			q = FUNC2(u->pwd, q + 1, URL_PWDLEN);

		p++;
	} else {
		p = URL;
	}

	/* hostname */
	if (*p == '[') {
		q = p + 1 + FUNC12(p + 1, ":0123456789ABCDEFabcdef");
		if (*q++ != ']')
			goto ouch;
	} else {
		/* valid characters in a DNS name */
		q = p + FUNC12(p, "-." "0123456789"
		    "ABCDEFGHIJKLMNOPQRSTUVWXYZ" "_"
		    "abcdefghijklmnopqrstuvwxyz");
	}
	if ((*q != '\0' && *q != '/' && *q != ':') || q - p > MAXHOSTNAMELEN)
		goto ouch;
	for (i = 0; p + i < q; i++)
		u->host[i] = FUNC14((unsigned char)p[i]);
	u->host[i] = '\0';
	p = q;

	/* port */
	if (*p == ':') {
		for (n = 0, q = ++p; *q && (*q != '/'); q++) {
			if (*q >= '0' && *q <= '9' && n < INT_MAX / 10) {
				n = n * 10 + (*q - '0');
			} else {
				/* invalid port */
				FUNC15(URL_BAD_PORT);
				goto ouch;
			}
		}
		if (n < 1 || n > IPPORT_MAX)
			goto ouch;
		u->port = n;
		p = q;
	}

nohost:
	/* document */
	if (!*p)
		p = "/";

	if (FUNC8(u->scheme, SCHEME_HTTP) == 0 ||
	    FUNC8(u->scheme, SCHEME_HTTPS) == 0) {
		const char hexnums[] = "0123456789abcdef";

		/* percent-escape whitespace. */
		if ((doc = FUNC6(FUNC10(p) * 3 + 1)) == NULL) {
			FUNC3();
			goto ouch;
		}
		u->doc = doc;
		while (*p != '\0') {
			if (!FUNC5((unsigned char)*p)) {
				*doc++ = *p++;
			} else {
				*doc++ = '%';
				*doc++ = hexnums[((unsigned int)*p) >> 4];
				*doc++ = hexnums[((unsigned int)*p) & 0xf];
				p++;
			}
		}
		*doc = '\0';
	} else if ((u->doc = FUNC9(p)) == NULL) {
		FUNC3();
		goto ouch;
	}

	FUNC0("scheme:   \"%s\"\n"
	    "user:     \"%s\"\n"
	    "password: \"%s\"\n"
	    "host:     \"%s\"\n"
	    "port:     \"%d\"\n"
	    "document: \"%s\"\n",
	    u->scheme, u->user, u->pwd,
	    u->host, u->port, u->doc);

	return (u);

ouch:
	FUNC4(u);
	return (NULL);
}