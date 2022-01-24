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
struct sshkey {int dummy; } ;
struct sshbuf {int dummy; } ;
struct fuzz {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sshbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUZZ_BASE64 ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct fuzz*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 struct fuzz* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct fuzz*) ; 
 int /*<<< orphan*/  FUNC7 (struct fuzz*) ; 
 int /*<<< orphan*/  FUNC8 (struct fuzz*) ; 
 int /*<<< orphan*/  FUNC9 (struct fuzz*) ; 
 int /*<<< orphan*/  FUNC10 (struct fuzz*) ; 
 struct sshbuf* FUNC11 (char*) ; 
 int /*<<< orphan*/  onerror ; 
 int /*<<< orphan*/  FUNC12 (struct sshkey*) ; 
 int /*<<< orphan*/  FUNC13 (struct sshkey*,char*) ; 
 int /*<<< orphan*/  FUNC14 (struct sshbuf*) ; 
 int /*<<< orphan*/  FUNC15 (struct sshbuf*) ; 
 int /*<<< orphan*/  FUNC16 (struct sshbuf*) ; 
 struct sshbuf* FUNC17 () ; 
 int FUNC18 (struct sshbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct sshbuf*) ; 
 int /*<<< orphan*/  FUNC20 (struct sshkey*) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,struct sshkey**) ; 
 scalar_t__ FUNC22 (struct sshbuf*,char*,struct sshkey**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (char*) ; 

void
FUNC24(void)
{
	struct sshkey *k1;
	struct sshbuf *buf, *fuzzed;
	struct fuzz *fuzz;
	int r;


	FUNC4("fuzz RSA private");
	buf = FUNC11("rsa_1");
	fuzz = FUNC5(FUZZ_BASE64, FUNC16(buf),
	    FUNC15(buf));
	FUNC0(FUNC22(buf, "", &k1, NULL), 0);
	FUNC20(k1);
	FUNC14(buf);
	FUNC1(fuzzed = FUNC17(), NULL);
	FUNC3(onerror, fuzz);
	for(; !FUNC7(fuzz); FUNC9(fuzz)) {
		r = FUNC18(fuzzed, FUNC10(fuzz), FUNC8(fuzz));
		FUNC0(r, 0);
		if (FUNC22(fuzzed, "", &k1, NULL) == 0)
			FUNC20(k1);
		FUNC19(fuzzed);
	}
	FUNC14(fuzzed);
	FUNC6(fuzz);
	FUNC2();

	FUNC4("fuzz RSA new-format private");
	buf = FUNC11("rsa_n");
	fuzz = FUNC5(FUZZ_BASE64, FUNC16(buf),
	    FUNC15(buf));
	FUNC0(FUNC22(buf, "", &k1, NULL), 0);
	FUNC20(k1);
	FUNC14(buf);
	FUNC1(fuzzed = FUNC17(), NULL);
	FUNC3(onerror, fuzz);
	for(; !FUNC7(fuzz); FUNC9(fuzz)) {
		r = FUNC18(fuzzed, FUNC10(fuzz), FUNC8(fuzz));
		FUNC0(r, 0);
		if (FUNC22(fuzzed, "", &k1, NULL) == 0)
			FUNC20(k1);
		FUNC19(fuzzed);
	}
	FUNC14(fuzzed);
	FUNC6(fuzz);
	FUNC2();

	FUNC4("fuzz DSA private");
	buf = FUNC11("dsa_1");
	fuzz = FUNC5(FUZZ_BASE64, FUNC16(buf),
	    FUNC15(buf));
	FUNC0(FUNC22(buf, "", &k1, NULL), 0);
	FUNC20(k1);
	FUNC14(buf);
	FUNC1(fuzzed = FUNC17(), NULL);
	FUNC3(onerror, fuzz);
	for(; !FUNC7(fuzz); FUNC9(fuzz)) {
		r = FUNC18(fuzzed, FUNC10(fuzz), FUNC8(fuzz));
		FUNC0(r, 0);
		if (FUNC22(fuzzed, "", &k1, NULL) == 0)
			FUNC20(k1);
		FUNC19(fuzzed);
	}
	FUNC14(fuzzed);
	FUNC6(fuzz);
	FUNC2();

	FUNC4("fuzz DSA new-format private");
	buf = FUNC11("dsa_n");
	fuzz = FUNC5(FUZZ_BASE64, FUNC16(buf),
	    FUNC15(buf));
	FUNC0(FUNC22(buf, "", &k1, NULL), 0);
	FUNC20(k1);
	FUNC14(buf);
	FUNC1(fuzzed = FUNC17(), NULL);
	FUNC3(onerror, fuzz);
	for(; !FUNC7(fuzz); FUNC9(fuzz)) {
		r = FUNC18(fuzzed, FUNC10(fuzz), FUNC8(fuzz));
		FUNC0(r, 0);
		if (FUNC22(fuzzed, "", &k1, NULL) == 0)
			FUNC20(k1);
		FUNC19(fuzzed);
	}
	FUNC14(fuzzed);
	FUNC6(fuzz);
	FUNC2();

#ifdef OPENSSL_HAS_ECC
	TEST_START("fuzz ECDSA private");
	buf = load_file("ecdsa_1");
	fuzz = fuzz_begin(FUZZ_BASE64, sshbuf_mutable_ptr(buf),
	    sshbuf_len(buf));
	ASSERT_INT_EQ(sshkey_parse_private_fileblob(buf, "", &k1, NULL), 0);
	sshkey_free(k1);
	sshbuf_free(buf);
	ASSERT_PTR_NE(fuzzed = sshbuf_new(), NULL);
	TEST_ONERROR(onerror, fuzz);
	for(; !fuzz_done(fuzz); fuzz_next(fuzz)) {
		r = sshbuf_put(fuzzed, fuzz_ptr(fuzz), fuzz_len(fuzz));
		ASSERT_INT_EQ(r, 0);
		if (sshkey_parse_private_fileblob(fuzzed, "", &k1, NULL) == 0)
			sshkey_free(k1);
		sshbuf_reset(fuzzed);
	}
	sshbuf_free(fuzzed);
	fuzz_cleanup(fuzz);
	TEST_DONE();

	TEST_START("fuzz ECDSA new-format private");
	buf = load_file("ecdsa_n");
	fuzz = fuzz_begin(FUZZ_BASE64, sshbuf_mutable_ptr(buf),
	    sshbuf_len(buf));
	ASSERT_INT_EQ(sshkey_parse_private_fileblob(buf, "", &k1, NULL), 0);
	sshkey_free(k1);
	sshbuf_free(buf);
	ASSERT_PTR_NE(fuzzed = sshbuf_new(), NULL);
	TEST_ONERROR(onerror, fuzz);
	for(; !fuzz_done(fuzz); fuzz_next(fuzz)) {
		r = sshbuf_put(fuzzed, fuzz_ptr(fuzz), fuzz_len(fuzz));
		ASSERT_INT_EQ(r, 0);
		if (sshkey_parse_private_fileblob(fuzzed, "", &k1, NULL) == 0)
			sshkey_free(k1);
		sshbuf_reset(fuzzed);
	}
	sshbuf_free(fuzzed);
	fuzz_cleanup(fuzz);
	TEST_DONE();
#endif

	FUNC4("fuzz Ed25519 private");
	buf = FUNC11("ed25519_1");
	fuzz = FUNC5(FUZZ_BASE64, FUNC16(buf),
	    FUNC15(buf));
	FUNC0(FUNC22(buf, "", &k1, NULL), 0);
	FUNC20(k1);
	FUNC14(buf);
	FUNC1(fuzzed = FUNC17(), NULL);
	FUNC3(onerror, fuzz);
	for(; !FUNC7(fuzz); FUNC9(fuzz)) {
		r = FUNC18(fuzzed, FUNC10(fuzz), FUNC8(fuzz));
		FUNC0(r, 0);
		if (FUNC22(fuzzed, "", &k1, NULL) == 0)
			FUNC20(k1);
		FUNC19(fuzzed);
	}
	FUNC14(fuzzed);
	FUNC6(fuzz);
	FUNC2();

	FUNC4("fuzz RSA public");
	buf = FUNC11("rsa_1");
	FUNC0(FUNC22(buf, "", &k1, NULL), 0);
	FUNC14(buf);
	FUNC12(k1);
	FUNC20(k1);
	FUNC2();

	FUNC4("fuzz RSA cert");
	FUNC0(FUNC21(FUNC23("rsa_1"), &k1), 0);
	FUNC12(k1);
	FUNC20(k1);
	FUNC2();

	FUNC4("fuzz DSA public");
	buf = FUNC11("dsa_1");
	FUNC0(FUNC22(buf, "", &k1, NULL), 0);
	FUNC14(buf);
	FUNC12(k1);
	FUNC20(k1);
	FUNC2();

	FUNC4("fuzz DSA cert");
	FUNC0(FUNC21(FUNC23("dsa_1"), &k1), 0);
	FUNC12(k1);
	FUNC20(k1);
	FUNC2();

#ifdef OPENSSL_HAS_ECC
	TEST_START("fuzz ECDSA public");
	buf = load_file("ecdsa_1");
	ASSERT_INT_EQ(sshkey_parse_private_fileblob(buf, "", &k1, NULL), 0);
	sshbuf_free(buf);
	public_fuzz(k1);
	sshkey_free(k1);
	TEST_DONE();

	TEST_START("fuzz ECDSA cert");
	ASSERT_INT_EQ(sshkey_load_cert(test_data_file("ecdsa_1"), &k1), 0);
	public_fuzz(k1);
	sshkey_free(k1);
	TEST_DONE();
#endif

	FUNC4("fuzz Ed25519 public");
	buf = FUNC11("ed25519_1");
	FUNC0(FUNC22(buf, "", &k1, NULL), 0);
	FUNC14(buf);
	FUNC12(k1);
	FUNC20(k1);
	FUNC2();

	FUNC4("fuzz Ed25519 cert");
	FUNC0(FUNC21(FUNC23("ed25519_1"), &k1), 0);
	FUNC12(k1);
	FUNC20(k1);
	FUNC2();

	FUNC4("fuzz RSA sig");
	buf = FUNC11("rsa_1");
	FUNC0(FUNC22(buf, "", &k1, NULL), 0);
	FUNC14(buf);
	FUNC13(k1, "ssh-rsa");
	FUNC20(k1);
	FUNC2();

	FUNC4("fuzz RSA SHA256 sig");
	buf = FUNC11("rsa_1");
	FUNC0(FUNC22(buf, "", &k1, NULL), 0);
	FUNC14(buf);
	FUNC13(k1, "rsa-sha2-256");
	FUNC20(k1);
	FUNC2();

	FUNC4("fuzz RSA SHA512 sig");
	buf = FUNC11("rsa_1");
	FUNC0(FUNC22(buf, "", &k1, NULL), 0);
	FUNC14(buf);
	FUNC13(k1, "rsa-sha2-512");
	FUNC20(k1);
	FUNC2();

	FUNC4("fuzz DSA sig");
	buf = FUNC11("dsa_1");
	FUNC0(FUNC22(buf, "", &k1, NULL), 0);
	FUNC14(buf);
	FUNC13(k1, NULL);
	FUNC20(k1);
	FUNC2();

#ifdef OPENSSL_HAS_ECC
	TEST_START("fuzz ECDSA sig");
	buf = load_file("ecdsa_1");
	ASSERT_INT_EQ(sshkey_parse_private_fileblob(buf, "", &k1, NULL), 0);
	sshbuf_free(buf);
	sig_fuzz(k1, NULL);
	sshkey_free(k1);
	TEST_DONE();
#endif

	FUNC4("fuzz Ed25519 sig");
	buf = FUNC11("ed25519_1");
	FUNC0(FUNC22(buf, "", &k1, NULL), 0);
	FUNC14(buf);
	FUNC13(k1, NULL);
	FUNC20(k1);
	FUNC2();

/* XXX fuzz decoded new-format blobs too */

}