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
typedef  int /*<<< orphan*/  u_char ;
struct sshkey {int dummy; } ;
struct sshbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sshbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSH2_CERT_TYPE_USER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sshbuf*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct sshbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct sshbuf*) ; 
 struct sshbuf* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct sshbuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct sshbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (struct sshbuf*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC10 (struct sshbuf*,struct sshbuf*) ; 
 int /*<<< orphan*/  FUNC11 (struct sshbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sshbuf*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct sshbuf*,struct sshbuf*) ; 
 int /*<<< orphan*/  FUNC14 (struct sshbuf*) ; 
 int /*<<< orphan*/  FUNC15 (struct sshkey const*,struct sshbuf*) ; 
 int /*<<< orphan*/  FUNC16 (struct sshkey const*,struct sshbuf*) ; 
 int /*<<< orphan*/  FUNC17 (struct sshkey const*,int /*<<< orphan*/ **,size_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC18(struct sshbuf *b, const struct sshkey *k, const char *type,
    const struct sshkey *sign_key, const struct sshkey *ca_key,
    const char *sig_alg)
{
	struct sshbuf *ca_buf, *pk, *principals, *critopts, *exts;
	u_char *sigblob;
	size_t siglen;

	ca_buf = FUNC6();
	FUNC1(ca_buf, NULL);
	FUNC0(FUNC15(ca_key, ca_buf), 0);

	/*
	 * Get the public key serialisation by rendering the key and skipping
	 * the type string. This is a bit of a hack :/
	 */
	pk = FUNC6();
	FUNC1(pk, NULL);
	FUNC0(FUNC16(k, pk), 0);
	FUNC0(FUNC14(pk), 0);

	principals = FUNC6();
	FUNC1(principals, NULL);
	FUNC0(FUNC8(principals, "gsamsa"), 0);
	FUNC0(FUNC8(principals, "gregor"), 0);

	critopts = FUNC6();
	FUNC1(critopts, NULL);
	FUNC3(critopts, "force-command", "/usr/local/bin/nethack");
	FUNC3(critopts, "source-address", "192.168.0.0/24,127.0.0.1,::1");

	exts = FUNC6();
	FUNC1(exts, NULL);
	FUNC3(critopts, "permit-X11-forwarding", NULL);

	FUNC0(FUNC8(b, type), 0);
	FUNC0(FUNC8(b, "noncenoncenonce!"), 0); /* nonce */
	FUNC0(FUNC13(b, pk), 0); /* public key serialisation */
	FUNC0(FUNC12(b, 1234), 0); /* serial */
	FUNC0(FUNC11(b, SSH2_CERT_TYPE_USER), 0); /* type */
	FUNC0(FUNC8(b, "gregor"), 0); /* key ID */
	FUNC0(FUNC10(b, principals), 0); /* principals */
	FUNC0(FUNC12(b, 0), 0); /* start */
	FUNC0(FUNC12(b, 0xffffffffffffffffULL), 0); /* end */
	FUNC0(FUNC10(b, critopts), 0); /* options */
	FUNC0(FUNC10(b, exts), 0); /* extensions */
	FUNC0(FUNC9(b, NULL, 0), 0); /* reserved */
	FUNC0(FUNC10(b, ca_buf), 0); /* signature key */
	FUNC0(FUNC17(sign_key, &sigblob, &siglen,
	    FUNC7(b), FUNC5(b), sig_alg, 0), 0);
	FUNC0(FUNC9(b, sigblob, siglen), 0); /* signature */

	FUNC2(sigblob);
	FUNC4(ca_buf);
	FUNC4(exts);
	FUNC4(critopts);
	FUNC4(principals);
	FUNC4(pk);
}