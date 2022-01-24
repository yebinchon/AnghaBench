#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct url {int /*<<< orphan*/  doc; } ;
struct TYPE_5__ {int /*<<< orphan*/  user; int /*<<< orphan*/  password; } ;
typedef  TYPE_1__ http_auth_params_t ;
struct TYPE_6__ {char* opaque; int nc; int /*<<< orphan*/  nonce; int /*<<< orphan*/  realm; scalar_t__* qop; scalar_t__* algo; } ;
typedef  TYPE_2__ http_auth_challenge_t ;
typedef  int /*<<< orphan*/  conn_t ;
typedef  int /*<<< orphan*/  HASHHEX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,scalar_t__*,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char**,char*,char*,scalar_t__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ *,char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int,...) ; 
 void* FUNC8 (char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(conn_t *conn, const char *hdr, http_auth_challenge_t *c,
		 http_auth_params_t *parms, struct url *url)
{
	int r;
	char noncecount[10];
	char cnonce[40];
	char *options = NULL;

	if (!c->realm || !c->nonce) {
		FUNC0("realm/nonce not set in challenge\n");
		return(-1);
	}
	if (!c->algo)
		c->algo = FUNC8("");

	if (FUNC3(&options, "%s%s%s%s",
	    *c->algo? ",algorithm=" : "", c->algo,
	    c->opaque? ",opaque=" : "", c->opaque?c->opaque:"") < 0)
		return (-1);

	if (!c->qop) {
		c->qop = FUNC8("");
		*noncecount = 0;
		*cnonce = 0;
	} else {
		c->nc++;
		FUNC7(noncecount, "%08x", c->nc);
		/* We don't try very hard with the cnonce ... */
		FUNC7(cnonce, "%x%lx", FUNC5(), (unsigned long)FUNC9(0));
	}

	HASHHEX HA1;
	FUNC1(c->algo, parms->user, c->realm,
		      parms->password, c->nonce, cnonce, HA1);
	FUNC0("HA1: [%s]\n", HA1);
	HASHHEX digest;
	FUNC2(HA1, c->nonce, noncecount, cnonce, c->qop,
			   "GET", url->doc, "", digest);

	if (c->qop[0]) {
		r = FUNC6(conn, "%s: Digest username=\"%s\",realm=\"%s\","
			     "nonce=\"%s\",uri=\"%s\",response=\"%s\","
			     "qop=\"auth\", cnonce=\"%s\", nc=%s%s",
			     hdr, parms->user, c->realm,
			     c->nonce, url->doc, digest,
			     cnonce, noncecount, options);
	} else {
		r = FUNC6(conn, "%s: Digest username=\"%s\",realm=\"%s\","
			     "nonce=\"%s\",uri=\"%s\",response=\"%s\"%s",
			     hdr, parms->user, c->realm,
			     c->nonce, url->doc, digest, options);
	}
	if (options)
		FUNC4(options);
	return (r);
}