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
struct g_bde_softc {int /*<<< orphan*/  sha2; } ;

/* Variables and functions */
 int BUFSIZ ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int RPP_ECHO_OFF ; 
 int RPP_REQUIRE_TTY ; 
 int SHA512_DIGEST_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct g_bde_softc*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (int,char*,int) ; 
 char* FUNC8 (char*,char*,int,int) ; 
 char* sha2 ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*) ; 
 int FUNC11 (char const*) ; 

__attribute__((used)) static void
FUNC12(struct g_bde_softc *sc, int sure, const char *input,
    const char *keyfile)
{
	char buf1[BUFSIZ + SHA512_DIGEST_LENGTH];
	char buf2[BUFSIZ + SHA512_DIGEST_LENGTH];
	char *p;
	int kfd, klen, bpos = 0;

	if (keyfile != NULL) {
		/* Read up to BUFSIZ bytes from keyfile */
		kfd = FUNC5(keyfile, O_RDONLY, 0);
		if (kfd < 0)
			FUNC1(1, "%s", keyfile);
		klen = FUNC7(kfd, buf1, BUFSIZ);
		if (klen == -1)
			FUNC1(1, "%s", keyfile);
		FUNC0(kfd);

		/* Prepend the passphrase with the hash of the key read */
		FUNC3(sc, buf1, klen);
		FUNC4(buf1, sc->sha2, SHA512_DIGEST_LENGTH);
		FUNC4(buf2, sc->sha2, SHA512_DIGEST_LENGTH);
		bpos = SHA512_DIGEST_LENGTH;
	}

	if (input != NULL) {
		if (FUNC11(input) >= BUFSIZ)
			FUNC2(1, "Passphrase too long");
		FUNC10(buf1 + bpos, input);

		FUNC3(sc, buf1, FUNC11(buf1 + bpos) + bpos);
		FUNC4(sha2, sc->sha2, SHA512_DIGEST_LENGTH);
		return;
	}
	for (;;) {
		p = FUNC8(
		    sure ? "Enter new passphrase:" : "Enter passphrase: ",
		    buf1 + bpos, sizeof buf1 - bpos,
		    RPP_ECHO_OFF | RPP_REQUIRE_TTY);
		if (p == NULL)
			FUNC1(1, "readpassphrase");

		if (sure) {
			p = FUNC8("Reenter new passphrase: ",
			    buf2 + bpos, sizeof buf2 - bpos,
			    RPP_ECHO_OFF | RPP_REQUIRE_TTY);
			if (p == NULL)
				FUNC1(1, "readpassphrase");

			if (FUNC9(buf1 + bpos, buf2 + bpos)) {
				FUNC6("They didn't match.\n");
				continue;
			}
		}
		if (FUNC11(buf1 + bpos) < 3) {
			FUNC6("Too short passphrase.\n");
			continue;
		}
		break;
	}
	FUNC3(sc, buf1, FUNC11(buf1 + bpos) + bpos);
	FUNC4(sha2, sc->sha2, SHA512_DIGEST_LENGTH);
}