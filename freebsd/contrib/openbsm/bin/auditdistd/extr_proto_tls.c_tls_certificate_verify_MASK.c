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
typedef  int /*<<< orphan*/  mdstr ;
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int EVP_MAX_MD_SIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  EX_NOPERM ; 
 int /*<<< orphan*/  EX_TEMPFAIL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,unsigned char) ; 
 scalar_t__ FUNC9 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 int FUNC11 (char*) ; 

__attribute__((used)) static void
FUNC12(SSL *ssl, const char *fingerprint)
{
	unsigned char md[EVP_MAX_MD_SIZE];
	char mdstr[sizeof("SHA256=") - 1 + EVP_MAX_MD_SIZE * 3];
	char *mdstrp;
	unsigned int i, mdsize;
	X509 *cert;

	if (fingerprint[0] == '\0') {
		FUNC6(1, "No fingerprint verification requested.");
		return;
	}

	cert = FUNC3(ssl);
	if (cert == NULL)
		FUNC7(EX_TEMPFAIL, "No peer certificate received.");

	if (FUNC4(cert, FUNC0(), md, &mdsize) != 1)
		FUNC7(EX_TEMPFAIL, "X509_digest() failed.");
	FUNC1(mdsize <= EVP_MAX_MD_SIZE);

	FUNC5(cert);

	(void)FUNC10(mdstr, "SHA256=", sizeof(mdstr));
	mdstrp = mdstr + FUNC11(mdstr);
	for (i = 0; i < mdsize; i++) {
		FUNC2(mdstrp + 3 <= mdstr + sizeof(mdstr));
		(void)FUNC8(mdstrp, "%02hhX:", md[i]);
		mdstrp += 3;
	}
	/* Clear last colon. */
	mdstrp[-1] = '\0';
	if (FUNC9(mdstr, fingerprint) != 0) {
		FUNC7(EX_NOPERM,
		    "Finger print doesn't match. Received \"%s\", expected \"%s\"",
		    mdstr, fingerprint);
	}
}