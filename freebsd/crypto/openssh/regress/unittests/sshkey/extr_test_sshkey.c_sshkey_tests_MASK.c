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
typedef  scalar_t__ u_int64_t ;
struct sshkey {int type; int ecdsa_nid; int serial; int nprincipals; int /*<<< orphan*/  signature_key; struct sshkey* cert; struct sshkey* extensions; struct sshkey* critical; scalar_t__ valid_before; scalar_t__ valid_after; struct sshkey** principals; struct sshkey* key_id; struct sshkey* ed25519_sk; struct sshkey* ed25519_pk; struct sshkey* ecdsa; struct sshkey* dsa; struct sshkey* rsa; } ;
struct sshbuf {int type; int ecdsa_nid; int serial; int nprincipals; int /*<<< orphan*/  signature_key; struct sshbuf* cert; struct sshbuf* extensions; struct sshbuf* critical; scalar_t__ valid_before; scalar_t__ valid_after; struct sshbuf** principals; struct sshbuf* key_id; struct sshbuf* ed25519_sk; struct sshbuf* ed25519_pk; struct sshbuf* ecdsa; struct sshbuf* dsa; struct sshbuf* rsa; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sshkey*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sshkey*,struct sshkey*) ; 
 int FUNC3 (struct sshkey*) ; 
 struct sshkey* FUNC4 (struct sshkey*) ; 
 struct sshkey* FUNC5 (struct sshkey*) ; 
 int KEY_DSA ; 
 int KEY_ECDSA ; 
 int KEY_ED25519 ; 
 int KEY_RSA ; 
 int KEY_UNSPEC ; 
 int SSH2_CERT_TYPE_USER ; 
 int SSH_ERR_KEY_CERT_INVALID_SIGN_KEY ; 
 int SSH_ERR_KEY_LENGTH ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct sshkey*,struct sshkey*,char*,struct sshkey*,struct sshkey*,int /*<<< orphan*/ *) ; 
 struct sshkey* FUNC9 (int,int) ; 
 struct sshkey* FUNC10 (struct sshkey*) ; 
 struct sshkey* FUNC11 (struct sshkey*) ; 
 struct sshkey* FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (struct sshkey*,char*,char*) ; 
 struct sshkey* FUNC14 (struct sshkey*) ; 
 struct sshkey* FUNC15 (struct sshkey*) ; 
 struct sshkey* FUNC16 (struct sshkey*) ; 
 int /*<<< orphan*/  FUNC17 (struct sshkey*,struct sshkey*,char*) ; 
 int /*<<< orphan*/  FUNC18 (struct sshkey*) ; 
 int /*<<< orphan*/  FUNC19 (struct sshkey*) ; 
 void* FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (struct sshkey*) ; 
 int /*<<< orphan*/  FUNC22 (struct sshkey*) ; 
 int FUNC23 (struct sshkey*,struct sshkey*,int /*<<< orphan*/ *) ; 
 int FUNC24 (struct sshkey*,struct sshkey**) ; 
 int FUNC25 (struct sshkey*,struct sshkey*) ; 
 int /*<<< orphan*/  FUNC26 (struct sshkey*) ; 
 int FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sshkey**) ; 
 int FUNC28 (struct sshkey*,int /*<<< orphan*/ *) ; 
 int FUNC29 (int,int,struct sshkey**) ; 
 int FUNC30 (int /*<<< orphan*/ ,struct sshkey**) ; 
 int FUNC31 (int /*<<< orphan*/ ,struct sshkey**,int /*<<< orphan*/ *) ; 
 struct sshkey* FUNC32 (int) ; 
 int FUNC33 (struct sshkey*,struct sshkey*) ; 
 int FUNC34 (struct sshkey*) ; 
 void* FUNC35 (char*) ; 
 int /*<<< orphan*/  FUNC36 (char*) ; 

void
FUNC37(void)
{
	struct sshkey *k1, *k2, *k3, *k4, *kr, *kd, *kf;
#ifdef OPENSSL_HAS_ECC
	struct sshkey *ke;
#endif
	struct sshbuf *b;

	FUNC7("new invalid");
	k1 = FUNC32(-42);
	FUNC1(k1, NULL);
	FUNC6();

	FUNC7("new/free KEY_UNSPEC");
	k1 = FUNC32(KEY_UNSPEC);
	FUNC2(k1, NULL);
	FUNC26(k1);
	FUNC6();

	FUNC7("new/free KEY_RSA");
	k1 = FUNC32(KEY_RSA);
	FUNC2(k1, NULL);
	FUNC2(k1->rsa, NULL);
	FUNC26(k1);
	FUNC6();

	FUNC7("new/free KEY_DSA");
	k1 = FUNC32(KEY_DSA);
	FUNC2(k1, NULL);
	FUNC2(k1->dsa, NULL);
	FUNC26(k1);
	FUNC6();

#ifdef OPENSSL_HAS_ECC
	TEST_START("new/free KEY_ECDSA");
	k1 = sshkey_new(KEY_ECDSA);
	ASSERT_PTR_NE(k1, NULL);
	ASSERT_PTR_EQ(k1->ecdsa, NULL);  /* Can't allocate without NID */
	sshkey_free(k1);
	TEST_DONE();
#endif

	FUNC7("new/free KEY_ED25519");
	k1 = FUNC32(KEY_ED25519);
	FUNC2(k1, NULL);
	/* These should be blank until key loaded or generated */
	FUNC1(k1->ed25519_sk, NULL);
	FUNC1(k1->ed25519_pk, NULL);
	FUNC26(k1);
	FUNC6();

	FUNC7("generate KEY_RSA too small modulus");
	FUNC0(FUNC29(KEY_RSA, 128, &k1),
	    SSH_ERR_KEY_LENGTH);
	FUNC1(k1, NULL);
	FUNC6();

	FUNC7("generate KEY_RSA too large modulus");
	FUNC0(FUNC29(KEY_RSA, 1 << 20, &k1),
	    SSH_ERR_KEY_LENGTH);
	FUNC1(k1, NULL);
	FUNC6();

	FUNC7("generate KEY_DSA wrong bits");
	FUNC0(FUNC29(KEY_DSA, 2048, &k1),
	    SSH_ERR_KEY_LENGTH);
	FUNC1(k1, NULL);
	FUNC26(k1);
	FUNC6();

#ifdef OPENSSL_HAS_ECC
	TEST_START("generate KEY_ECDSA wrong bits");
	ASSERT_INT_EQ(sshkey_generate(KEY_ECDSA, 42, &k1),
	    SSH_ERR_KEY_LENGTH);
	ASSERT_PTR_EQ(k1, NULL);
	sshkey_free(k1);
	TEST_DONE();
#endif

	FUNC7("generate KEY_RSA");
	FUNC0(FUNC29(KEY_RSA, 767, &kr),
	    SSH_ERR_KEY_LENGTH);
	FUNC0(FUNC29(KEY_RSA, 1024, &kr), 0);
	FUNC2(kr, NULL);
	FUNC2(kr->rsa, NULL);
	FUNC2(FUNC15(kr), NULL);
	FUNC2(FUNC14(kr), NULL);
	FUNC2(FUNC16(kr), NULL);
	FUNC0(FUNC3(FUNC15(kr)), 1024);
	FUNC6();

	FUNC7("generate KEY_DSA");
	FUNC0(FUNC29(KEY_DSA, 1024, &kd), 0);
	FUNC2(kd, NULL);
	FUNC2(kd->dsa, NULL);
	FUNC2(FUNC10(kd), NULL);
	FUNC2(FUNC11(kd), NULL);
	FUNC6();

#ifdef OPENSSL_HAS_ECC
	TEST_START("generate KEY_ECDSA");
	ASSERT_INT_EQ(sshkey_generate(KEY_ECDSA, 256, &ke), 0);
	ASSERT_PTR_NE(ke, NULL);
	ASSERT_PTR_NE(ke->ecdsa, NULL);
	ASSERT_PTR_NE(EC_KEY_get0_public_key(ke->ecdsa), NULL);
	ASSERT_PTR_NE(EC_KEY_get0_private_key(ke->ecdsa), NULL);
	TEST_DONE();
#endif

	FUNC7("generate KEY_ED25519");
	FUNC0(FUNC29(KEY_ED25519, 256, &kf), 0);
	FUNC2(kf, NULL);
	FUNC0(kf->type, KEY_ED25519);
	FUNC2(kf->ed25519_pk, NULL);
	FUNC2(kf->ed25519_sk, NULL);
	FUNC6();

	FUNC7("demote KEY_RSA");
	FUNC0(FUNC24(kr, &k1), 0);
	FUNC2(k1, NULL);
	FUNC2(kr, k1);
	FUNC0(k1->type, KEY_RSA);
	FUNC2(k1->rsa, NULL);
	FUNC2(FUNC15(k1), NULL);
	FUNC2(FUNC14(k1), NULL);
	FUNC1(FUNC16(k1), NULL);
	FUNC6();

	FUNC7("equal KEY_RSA/demoted KEY_RSA");
	FUNC0(FUNC25(kr, k1), 1);
	FUNC26(k1);
	FUNC6();

	FUNC7("demote KEY_DSA");
	FUNC0(FUNC24(kd, &k1), 0);
	FUNC2(k1, NULL);
	FUNC2(kd, k1);
	FUNC0(k1->type, KEY_DSA);
	FUNC2(k1->dsa, NULL);
	FUNC2(FUNC10(k1), NULL);
	FUNC1(FUNC11(k1), NULL);
	FUNC6();

	FUNC7("equal KEY_DSA/demoted KEY_DSA");
	FUNC0(FUNC25(kd, k1), 1);
	FUNC26(k1);
	FUNC6();

#ifdef OPENSSL_HAS_ECC
	TEST_START("demote KEY_ECDSA");
	ASSERT_INT_EQ(sshkey_demote(ke, &k1), 0);
	ASSERT_PTR_NE(k1, NULL);
	ASSERT_PTR_NE(ke, k1);
	ASSERT_INT_EQ(k1->type, KEY_ECDSA);
	ASSERT_PTR_NE(k1->ecdsa, NULL);
	ASSERT_INT_EQ(k1->ecdsa_nid, ke->ecdsa_nid);
	ASSERT_PTR_NE(EC_KEY_get0_public_key(ke->ecdsa), NULL);
	ASSERT_PTR_EQ(EC_KEY_get0_private_key(k1->ecdsa), NULL);
	TEST_DONE();

	TEST_START("equal KEY_ECDSA/demoted KEY_ECDSA");
	ASSERT_INT_EQ(sshkey_equal(ke, k1), 1);
	sshkey_free(k1);
	TEST_DONE();
#endif

	FUNC7("demote KEY_ED25519");
	FUNC0(FUNC24(kf, &k1), 0);
	FUNC2(k1, NULL);
	FUNC2(kf, k1);
	FUNC0(k1->type, KEY_ED25519);
	FUNC2(k1->ed25519_pk, NULL);
	FUNC1(k1->ed25519_sk, NULL);
	FUNC6();

	FUNC7("equal KEY_ED25519/demoted KEY_ED25519");
	FUNC0(FUNC25(kf, k1), 1);
	FUNC26(k1);
	FUNC6();

	FUNC7("equal mismatched key types");
	FUNC0(FUNC25(kd, kr), 0);
#ifdef OPENSSL_HAS_ECC
	ASSERT_INT_EQ(sshkey_equal(kd, ke), 0);
	ASSERT_INT_EQ(sshkey_equal(kr, ke), 0);
	ASSERT_INT_EQ(sshkey_equal(ke, kf), 0);
#endif
	FUNC0(FUNC25(kd, kf), 0);
	FUNC6();

	FUNC7("equal different keys");
	FUNC0(FUNC29(KEY_RSA, 1024, &k1), 0);
	FUNC0(FUNC25(kr, k1), 0);
	FUNC26(k1);
	FUNC0(FUNC29(KEY_DSA, 1024, &k1), 0);
	FUNC0(FUNC25(kd, k1), 0);
	FUNC26(k1);
#ifdef OPENSSL_HAS_ECC
	ASSERT_INT_EQ(sshkey_generate(KEY_ECDSA, 256, &k1), 0);
	ASSERT_INT_EQ(sshkey_equal(ke, k1), 0);
	sshkey_free(k1);
#endif
	FUNC0(FUNC29(KEY_ED25519, 256, &k1), 0);
	FUNC0(FUNC25(kf, k1), 0);
	FUNC26(k1);
	FUNC6();

	FUNC26(kr);
	FUNC26(kd);
#ifdef OPENSSL_HAS_ECC
	sshkey_free(ke);
#endif
	FUNC26(kf);

	FUNC7("certify key");
	FUNC0(FUNC31(FUNC36("ed25519_1.pub"),
	    &k1, NULL), 0);
	k2 = FUNC12("ed25519_2");
	FUNC0(FUNC34(k1), 0);
	FUNC2(k1->cert, NULL);
	k1->cert->type = SSH2_CERT_TYPE_USER;
	k1->cert->serial = 1234;
	k1->cert->key_id = FUNC35("estragon");
	FUNC2(k1->cert->key_id, NULL);
	k1->cert->principals = FUNC9(4, sizeof(*k1->cert->principals));
	FUNC2(*k1->cert->principals, NULL);
	k1->cert->principals[0] = FUNC35("estragon");
	k1->cert->principals[1] = FUNC35("vladimir");
	k1->cert->principals[2] = FUNC35("pozzo");
	k1->cert->principals[3] = FUNC35("lucky");
	FUNC2(k1->cert->principals[0], NULL);
	FUNC2(k1->cert->principals[1], NULL);
	FUNC2(k1->cert->principals[2], NULL);
	FUNC2(k1->cert->principals[3], NULL);
	k1->cert->nprincipals = 4;
	k1->cert->valid_after = 0;
	k1->cert->valid_before = (u_int64_t)-1;
	FUNC18(k1->cert->critical);
	k1->cert->critical = FUNC20();
	FUNC2(k1->cert->critical, NULL);
	FUNC18(k1->cert->extensions);
	k1->cert->extensions = FUNC20();
	FUNC2(k1->cert->extensions, NULL);
	FUNC13(k1->cert->critical, "force-command", "/usr/bin/true");
	FUNC13(k1->cert->critical, "source-address", "127.0.0.1");
	FUNC13(k1->cert->extensions, "permit-X11-forwarding", NULL);
	FUNC13(k1->cert->extensions, "permit-agent-forwarding", NULL);
	FUNC0(FUNC28(k2, &k1->cert->signature_key), 0);
	FUNC0(FUNC23(k1, k2, NULL), 0);
	b = FUNC20();
	FUNC2(b, NULL);
	FUNC0(FUNC33(k1, b), 0);
	FUNC0(FUNC27(FUNC21(b), FUNC19(b), &k3), 0);

	FUNC26(k1);
	FUNC26(k2);
	FUNC26(k3);
	FUNC22(b);
	FUNC6();

	FUNC7("sign and verify RSA");
	k1 = FUNC12("rsa_1");
	FUNC0(FUNC31(FUNC36("rsa_2.pub"), &k2,
	    NULL), 0);
	FUNC17(k1, k2, "ssh-rsa");
	FUNC26(k1);
	FUNC26(k2);
	FUNC6();

	FUNC7("sign and verify RSA-SHA256");
	k1 = FUNC12("rsa_1");
	FUNC0(FUNC31(FUNC36("rsa_2.pub"), &k2,
	    NULL), 0);
	FUNC17(k1, k2, "rsa-sha2-256");
	FUNC26(k1);
	FUNC26(k2);
	FUNC6();

	FUNC7("sign and verify RSA-SHA512");
	k1 = FUNC12("rsa_1");
	FUNC0(FUNC31(FUNC36("rsa_2.pub"), &k2,
	    NULL), 0);
	FUNC17(k1, k2, "rsa-sha2-512");
	FUNC26(k1);
	FUNC26(k2);
	FUNC6();

	FUNC7("sign and verify DSA");
	k1 = FUNC12("dsa_1");
	FUNC0(FUNC31(FUNC36("dsa_2.pub"), &k2,
	    NULL), 0);
	FUNC17(k1, k2, NULL);
	FUNC26(k1);
	FUNC26(k2);
	FUNC6();

#ifdef OPENSSL_HAS_ECC
	TEST_START("sign and verify ECDSA");
	k1 = get_private("ecdsa_1");
	ASSERT_INT_EQ(sshkey_load_public(test_data_file("ecdsa_2.pub"), &k2,
	    NULL), 0);
	signature_tests(k1, k2, NULL);
	sshkey_free(k1);
	sshkey_free(k2);
	TEST_DONE();
#endif

	FUNC7("sign and verify ED25519");
	k1 = FUNC12("ed25519_1");
	FUNC0(FUNC31(FUNC36("ed25519_2.pub"), &k2,
	    NULL), 0);
	FUNC17(k1, k2, NULL);
	FUNC26(k1);
	FUNC26(k2);
	FUNC6();

	FUNC7("nested certificate");
	FUNC0(FUNC30(FUNC36("rsa_1"), &k1), 0);
	FUNC0(FUNC31(FUNC36("rsa_1.pub"), &k2,
	    NULL), 0);
	k3 = FUNC12("rsa_1");
	FUNC8(b, k2, "ssh-rsa-cert-v01@openssh.com", k3, k1, NULL);
	FUNC0(FUNC27(FUNC21(b), FUNC19(b), &k4),
	    SSH_ERR_KEY_CERT_INVALID_SIGN_KEY);
	FUNC1(k4, NULL);
	FUNC26(k1);
	FUNC26(k2);
	FUNC26(k3);
	FUNC18(b);
	FUNC6();

}