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
struct stat {scalar_t__ st_size; } ;
struct sshkey {int dummy; } ;
struct passwd {char* pw_name; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/ * _PATH_HOST_DSA_KEY_FILE ; 
 int /*<<< orphan*/ * _PATH_HOST_ECDSA_KEY_FILE ; 
 int /*<<< orphan*/ * _PATH_HOST_ED25519_KEY_FILE ; 
 int /*<<< orphan*/ * _PATH_HOST_RSA_KEY_FILE ; 
 int /*<<< orphan*/ * _PATH_HOST_XMSS_KEY_FILE ; 
 char* __progname ; 
 scalar_t__ bits ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 char* hostname ; 
 int /*<<< orphan*/  identity_file ; 
 int FUNC10 (char*) ; 
 int /*<<< orphan*/  new_format_cipher ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 scalar_t__ FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  rounds ; 
 int /*<<< orphan*/  FUNC13 (char*,int,char*,char*,char*) ; 
 char* FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (struct sshkey*) ; 
 int FUNC16 (struct sshkey*,struct sshkey**) ; 
 int FUNC17 (int,scalar_t__,struct sshkey**) ; 
 int FUNC18 (struct sshkey*,char*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC19 (char*) ; 
 int FUNC20 (struct sshkey*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (char*,struct stat*) ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC22 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (int,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  use_new_format ; 
 int /*<<< orphan*/  FUNC24 (char**,char*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC25(struct passwd *pw)
{
	struct {
		char *key_type;
		char *key_type_display;
		char *path;
	} key_types[] = {
#ifdef WITH_OPENSSL
		{ "rsa", "RSA" ,_PATH_HOST_RSA_KEY_FILE },
		{ "dsa", "DSA", _PATH_HOST_DSA_KEY_FILE },
#ifdef OPENSSL_HAS_ECC
		{ "ecdsa", "ECDSA",_PATH_HOST_ECDSA_KEY_FILE },
#endif /* OPENSSL_HAS_ECC */
#endif /* WITH_OPENSSL */
		{ "ed25519", "ED25519",_PATH_HOST_ED25519_KEY_FILE },
#ifdef WITH_XMSS
		{ "xmss", "XMSS",_PATH_HOST_XMSS_KEY_FILE },
#endif /* WITH_XMSS */
		{ NULL, NULL, NULL }
	};

	int first = 0;
	struct stat st;
	struct sshkey *private, *public;
	char comment[1024], *prv_tmp, *pub_tmp, *prv_file, *pub_file;
	int i, type, fd, r;
	FILE *f;

	for (i = 0; key_types[i].key_type; i++) {
		public = private = NULL;
		prv_tmp = pub_tmp = prv_file = pub_file = NULL;

		FUNC24(&prv_file, "%s%s",
		    identity_file, key_types[i].path);

		/* Check whether private key exists and is not zero-length */
		if (FUNC21(prv_file, &st) == 0) {
			if (st.st_size != 0)
				goto next;
		} else if (errno != ENOENT) {
			FUNC1("Could not stat %s: %s", key_types[i].path,
			    FUNC22(errno));
			goto failnext;
		}

		/*
		 * Private key doesn't exist or is invalid; proceed with
		 * key generation.
		 */
		FUNC24(&prv_tmp, "%s%s.XXXXXXXXXX",
		    identity_file, key_types[i].path);
		FUNC24(&pub_tmp, "%s%s.pub.XXXXXXXXXX",
		    identity_file, key_types[i].path);
		FUNC24(&pub_file, "%s%s.pub",
		    identity_file, key_types[i].path);

		if (first == 0) {
			first = 1;
			FUNC11("%s: generating new host keys: ", __progname);
		}
		FUNC11("%s ", key_types[i].key_type_display);
		FUNC7(stdout);
		type = FUNC19(key_types[i].key_type);
		if ((fd = FUNC10(prv_tmp)) == -1) {
			FUNC1("Could not save your public key in %s: %s",
			    prv_tmp, FUNC22(errno));
			goto failnext;
		}
		FUNC0(fd); /* just using mkstemp() to generate/reserve a name */
		bits = 0;
		FUNC23(type, NULL, &bits);
		if ((r = FUNC17(type, bits, &private)) != 0) {
			FUNC1("sshkey_generate failed: %s", FUNC14(r));
			goto failnext;
		}
		if ((r = FUNC16(private, &public)) != 0)
			FUNC2("sshkey_from_private failed: %s", FUNC14(r));
		FUNC13(comment, sizeof comment, "%s@%s", pw->pw_name,
		    hostname);
		if ((r = FUNC18(private, prv_tmp, "",
		    comment, use_new_format, new_format_cipher, rounds)) != 0) {
			FUNC1("Saving key \"%s\" failed: %s",
			    prv_tmp, FUNC14(r));
			goto failnext;
		}
		if ((fd = FUNC10(pub_tmp)) == -1) {
			FUNC1("Could not save your public key in %s: %s",
			    pub_tmp, FUNC22(errno));
			goto failnext;
		}
		(void)FUNC3(fd, 0644);
		f = FUNC5(fd, "w");
		if (f == NULL) {
			FUNC1("fdopen %s failed: %s", pub_tmp, FUNC22(errno));
			FUNC0(fd);
			goto failnext;
		}
		if ((r = FUNC20(public, f)) != 0) {
			FUNC1("write key failed: %s", FUNC14(r));
			FUNC4(f);
			goto failnext;
		}
		FUNC8(f, " %s\n", comment);
		if (FUNC6(f) != 0) {
			FUNC1("write key failed: %s", FUNC22(errno));
			FUNC4(f);
			goto failnext;
		}
		if (FUNC4(f) != 0) {
			FUNC1("key close failed: %s", FUNC22(errno));
			goto failnext;
		}

		/* Rename temporary files to their permanent locations. */
		if (FUNC12(pub_tmp, pub_file) != 0) {
			FUNC1("Unable to move %s into position: %s",
			    pub_file, FUNC22(errno));
			goto failnext;
		}
		if (FUNC12(prv_tmp, prv_file) != 0) {
			FUNC1("Unable to move %s into position: %s",
			    key_types[i].path, FUNC22(errno));
 failnext:
			first = 0;
			goto next;
		}
 next:
		FUNC15(private);
		FUNC15(public);
		FUNC9(prv_tmp);
		FUNC9(pub_tmp);
		FUNC9(prv_file);
		FUNC9(pub_file);
	}
	if (first != 0)
		FUNC11("\n");
}