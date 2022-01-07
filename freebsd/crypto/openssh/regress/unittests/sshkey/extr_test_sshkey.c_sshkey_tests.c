
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int64_t ;
struct sshkey {int type; int ecdsa_nid; int serial; int nprincipals; int signature_key; struct sshkey* cert; struct sshkey* extensions; struct sshkey* critical; scalar_t__ valid_before; scalar_t__ valid_after; struct sshkey** principals; struct sshkey* key_id; struct sshkey* ed25519_sk; struct sshkey* ed25519_pk; struct sshkey* ecdsa; struct sshkey* dsa; struct sshkey* rsa; } ;
struct sshbuf {int type; int ecdsa_nid; int serial; int nprincipals; int signature_key; struct sshbuf* cert; struct sshbuf* extensions; struct sshbuf* critical; scalar_t__ valid_before; scalar_t__ valid_after; struct sshbuf** principals; struct sshbuf* key_id; struct sshbuf* ed25519_sk; struct sshbuf* ed25519_pk; struct sshbuf* ecdsa; struct sshbuf* dsa; struct sshbuf* rsa; } ;


 int ASSERT_INT_EQ (int,int) ;
 int ASSERT_PTR_EQ (struct sshkey*,int *) ;
 int ASSERT_PTR_NE (struct sshkey*,struct sshkey*) ;
 int BN_num_bits (struct sshkey*) ;
 struct sshkey* EC_KEY_get0_private_key (struct sshkey*) ;
 struct sshkey* EC_KEY_get0_public_key (struct sshkey*) ;
 int KEY_DSA ;
 int KEY_ECDSA ;
 int KEY_ED25519 ;
 int KEY_RSA ;
 int KEY_UNSPEC ;
 int SSH2_CERT_TYPE_USER ;
 int SSH_ERR_KEY_CERT_INVALID_SIGN_KEY ;
 int SSH_ERR_KEY_LENGTH ;
 int TEST_DONE () ;
 int TEST_START (char*) ;
 int build_cert (struct sshkey*,struct sshkey*,char*,struct sshkey*,struct sshkey*,int *) ;
 struct sshkey* calloc (int,int) ;
 struct sshkey* dsa_g (struct sshkey*) ;
 struct sshkey* dsa_priv_key (struct sshkey*) ;
 struct sshkey* get_private (char*) ;
 int put_opt (struct sshkey*,char*,char*) ;
 struct sshkey* rsa_e (struct sshkey*) ;
 struct sshkey* rsa_n (struct sshkey*) ;
 struct sshkey* rsa_p (struct sshkey*) ;
 int signature_tests (struct sshkey*,struct sshkey*,char*) ;
 int sshbuf_free (struct sshkey*) ;
 int sshbuf_len (struct sshkey*) ;
 void* sshbuf_new () ;
 int sshbuf_ptr (struct sshkey*) ;
 int sshbuf_reset (struct sshkey*) ;
 int sshkey_certify (struct sshkey*,struct sshkey*,int *) ;
 int sshkey_demote (struct sshkey*,struct sshkey**) ;
 int sshkey_equal (struct sshkey*,struct sshkey*) ;
 int sshkey_free (struct sshkey*) ;
 int sshkey_from_blob (int ,int ,struct sshkey**) ;
 int sshkey_from_private (struct sshkey*,int *) ;
 int sshkey_generate (int,int,struct sshkey**) ;
 int sshkey_load_cert (int ,struct sshkey**) ;
 int sshkey_load_public (int ,struct sshkey**,int *) ;
 struct sshkey* sshkey_new (int) ;
 int sshkey_putb (struct sshkey*,struct sshkey*) ;
 int sshkey_to_certified (struct sshkey*) ;
 void* strdup (char*) ;
 int test_data_file (char*) ;

void
sshkey_tests(void)
{
 struct sshkey *k1, *k2, *k3, *k4, *kr, *kd, *kf;



 struct sshbuf *b;

 TEST_START("new invalid");
 k1 = sshkey_new(-42);
 ASSERT_PTR_EQ(k1, ((void*)0));
 TEST_DONE();

 TEST_START("new/free KEY_UNSPEC");
 k1 = sshkey_new(KEY_UNSPEC);
 ASSERT_PTR_NE(k1, ((void*)0));
 sshkey_free(k1);
 TEST_DONE();

 TEST_START("new/free KEY_RSA");
 k1 = sshkey_new(KEY_RSA);
 ASSERT_PTR_NE(k1, ((void*)0));
 ASSERT_PTR_NE(k1->rsa, ((void*)0));
 sshkey_free(k1);
 TEST_DONE();

 TEST_START("new/free KEY_DSA");
 k1 = sshkey_new(KEY_DSA);
 ASSERT_PTR_NE(k1, ((void*)0));
 ASSERT_PTR_NE(k1->dsa, ((void*)0));
 sshkey_free(k1);
 TEST_DONE();
 TEST_START("new/free KEY_ED25519");
 k1 = sshkey_new(KEY_ED25519);
 ASSERT_PTR_NE(k1, ((void*)0));

 ASSERT_PTR_EQ(k1->ed25519_sk, ((void*)0));
 ASSERT_PTR_EQ(k1->ed25519_pk, ((void*)0));
 sshkey_free(k1);
 TEST_DONE();

 TEST_START("generate KEY_RSA too small modulus");
 ASSERT_INT_EQ(sshkey_generate(KEY_RSA, 128, &k1),
     SSH_ERR_KEY_LENGTH);
 ASSERT_PTR_EQ(k1, ((void*)0));
 TEST_DONE();

 TEST_START("generate KEY_RSA too large modulus");
 ASSERT_INT_EQ(sshkey_generate(KEY_RSA, 1 << 20, &k1),
     SSH_ERR_KEY_LENGTH);
 ASSERT_PTR_EQ(k1, ((void*)0));
 TEST_DONE();

 TEST_START("generate KEY_DSA wrong bits");
 ASSERT_INT_EQ(sshkey_generate(KEY_DSA, 2048, &k1),
     SSH_ERR_KEY_LENGTH);
 ASSERT_PTR_EQ(k1, ((void*)0));
 sshkey_free(k1);
 TEST_DONE();
 TEST_START("generate KEY_RSA");
 ASSERT_INT_EQ(sshkey_generate(KEY_RSA, 767, &kr),
     SSH_ERR_KEY_LENGTH);
 ASSERT_INT_EQ(sshkey_generate(KEY_RSA, 1024, &kr), 0);
 ASSERT_PTR_NE(kr, ((void*)0));
 ASSERT_PTR_NE(kr->rsa, ((void*)0));
 ASSERT_PTR_NE(rsa_n(kr), ((void*)0));
 ASSERT_PTR_NE(rsa_e(kr), ((void*)0));
 ASSERT_PTR_NE(rsa_p(kr), ((void*)0));
 ASSERT_INT_EQ(BN_num_bits(rsa_n(kr)), 1024);
 TEST_DONE();

 TEST_START("generate KEY_DSA");
 ASSERT_INT_EQ(sshkey_generate(KEY_DSA, 1024, &kd), 0);
 ASSERT_PTR_NE(kd, ((void*)0));
 ASSERT_PTR_NE(kd->dsa, ((void*)0));
 ASSERT_PTR_NE(dsa_g(kd), ((void*)0));
 ASSERT_PTR_NE(dsa_priv_key(kd), ((void*)0));
 TEST_DONE();
 TEST_START("generate KEY_ED25519");
 ASSERT_INT_EQ(sshkey_generate(KEY_ED25519, 256, &kf), 0);
 ASSERT_PTR_NE(kf, ((void*)0));
 ASSERT_INT_EQ(kf->type, KEY_ED25519);
 ASSERT_PTR_NE(kf->ed25519_pk, ((void*)0));
 ASSERT_PTR_NE(kf->ed25519_sk, ((void*)0));
 TEST_DONE();

 TEST_START("demote KEY_RSA");
 ASSERT_INT_EQ(sshkey_demote(kr, &k1), 0);
 ASSERT_PTR_NE(k1, ((void*)0));
 ASSERT_PTR_NE(kr, k1);
 ASSERT_INT_EQ(k1->type, KEY_RSA);
 ASSERT_PTR_NE(k1->rsa, ((void*)0));
 ASSERT_PTR_NE(rsa_n(k1), ((void*)0));
 ASSERT_PTR_NE(rsa_e(k1), ((void*)0));
 ASSERT_PTR_EQ(rsa_p(k1), ((void*)0));
 TEST_DONE();

 TEST_START("equal KEY_RSA/demoted KEY_RSA");
 ASSERT_INT_EQ(sshkey_equal(kr, k1), 1);
 sshkey_free(k1);
 TEST_DONE();

 TEST_START("demote KEY_DSA");
 ASSERT_INT_EQ(sshkey_demote(kd, &k1), 0);
 ASSERT_PTR_NE(k1, ((void*)0));
 ASSERT_PTR_NE(kd, k1);
 ASSERT_INT_EQ(k1->type, KEY_DSA);
 ASSERT_PTR_NE(k1->dsa, ((void*)0));
 ASSERT_PTR_NE(dsa_g(k1), ((void*)0));
 ASSERT_PTR_EQ(dsa_priv_key(k1), ((void*)0));
 TEST_DONE();

 TEST_START("equal KEY_DSA/demoted KEY_DSA");
 ASSERT_INT_EQ(sshkey_equal(kd, k1), 1);
 sshkey_free(k1);
 TEST_DONE();
 TEST_START("demote KEY_ED25519");
 ASSERT_INT_EQ(sshkey_demote(kf, &k1), 0);
 ASSERT_PTR_NE(k1, ((void*)0));
 ASSERT_PTR_NE(kf, k1);
 ASSERT_INT_EQ(k1->type, KEY_ED25519);
 ASSERT_PTR_NE(k1->ed25519_pk, ((void*)0));
 ASSERT_PTR_EQ(k1->ed25519_sk, ((void*)0));
 TEST_DONE();

 TEST_START("equal KEY_ED25519/demoted KEY_ED25519");
 ASSERT_INT_EQ(sshkey_equal(kf, k1), 1);
 sshkey_free(k1);
 TEST_DONE();

 TEST_START("equal mismatched key types");
 ASSERT_INT_EQ(sshkey_equal(kd, kr), 0);





 ASSERT_INT_EQ(sshkey_equal(kd, kf), 0);
 TEST_DONE();

 TEST_START("equal different keys");
 ASSERT_INT_EQ(sshkey_generate(KEY_RSA, 1024, &k1), 0);
 ASSERT_INT_EQ(sshkey_equal(kr, k1), 0);
 sshkey_free(k1);
 ASSERT_INT_EQ(sshkey_generate(KEY_DSA, 1024, &k1), 0);
 ASSERT_INT_EQ(sshkey_equal(kd, k1), 0);
 sshkey_free(k1);





 ASSERT_INT_EQ(sshkey_generate(KEY_ED25519, 256, &k1), 0);
 ASSERT_INT_EQ(sshkey_equal(kf, k1), 0);
 sshkey_free(k1);
 TEST_DONE();

 sshkey_free(kr);
 sshkey_free(kd);



 sshkey_free(kf);

 TEST_START("certify key");
 ASSERT_INT_EQ(sshkey_load_public(test_data_file("ed25519_1.pub"),
     &k1, ((void*)0)), 0);
 k2 = get_private("ed25519_2");
 ASSERT_INT_EQ(sshkey_to_certified(k1), 0);
 ASSERT_PTR_NE(k1->cert, ((void*)0));
 k1->cert->type = SSH2_CERT_TYPE_USER;
 k1->cert->serial = 1234;
 k1->cert->key_id = strdup("estragon");
 ASSERT_PTR_NE(k1->cert->key_id, ((void*)0));
 k1->cert->principals = calloc(4, sizeof(*k1->cert->principals));
 ASSERT_PTR_NE(k1->cert->principals, ((void*)0));
 k1->cert->principals[0] = strdup("estragon");
 k1->cert->principals[1] = strdup("vladimir");
 k1->cert->principals[2] = strdup("pozzo");
 k1->cert->principals[3] = strdup("lucky");
 ASSERT_PTR_NE(k1->cert->principals[0], ((void*)0));
 ASSERT_PTR_NE(k1->cert->principals[1], ((void*)0));
 ASSERT_PTR_NE(k1->cert->principals[2], ((void*)0));
 ASSERT_PTR_NE(k1->cert->principals[3], ((void*)0));
 k1->cert->nprincipals = 4;
 k1->cert->valid_after = 0;
 k1->cert->valid_before = (u_int64_t)-1;
 sshbuf_free(k1->cert->critical);
 k1->cert->critical = sshbuf_new();
 ASSERT_PTR_NE(k1->cert->critical, ((void*)0));
 sshbuf_free(k1->cert->extensions);
 k1->cert->extensions = sshbuf_new();
 ASSERT_PTR_NE(k1->cert->extensions, ((void*)0));
 put_opt(k1->cert->critical, "force-command", "/usr/bin/true");
 put_opt(k1->cert->critical, "source-address", "127.0.0.1");
 put_opt(k1->cert->extensions, "permit-X11-forwarding", ((void*)0));
 put_opt(k1->cert->extensions, "permit-agent-forwarding", ((void*)0));
 ASSERT_INT_EQ(sshkey_from_private(k2, &k1->cert->signature_key), 0);
 ASSERT_INT_EQ(sshkey_certify(k1, k2, ((void*)0)), 0);
 b = sshbuf_new();
 ASSERT_PTR_NE(b, ((void*)0));
 ASSERT_INT_EQ(sshkey_putb(k1, b), 0);
 ASSERT_INT_EQ(sshkey_from_blob(sshbuf_ptr(b), sshbuf_len(b), &k3), 0);

 sshkey_free(k1);
 sshkey_free(k2);
 sshkey_free(k3);
 sshbuf_reset(b);
 TEST_DONE();

 TEST_START("sign and verify RSA");
 k1 = get_private("rsa_1");
 ASSERT_INT_EQ(sshkey_load_public(test_data_file("rsa_2.pub"), &k2,
     ((void*)0)), 0);
 signature_tests(k1, k2, "ssh-rsa");
 sshkey_free(k1);
 sshkey_free(k2);
 TEST_DONE();

 TEST_START("sign and verify RSA-SHA256");
 k1 = get_private("rsa_1");
 ASSERT_INT_EQ(sshkey_load_public(test_data_file("rsa_2.pub"), &k2,
     ((void*)0)), 0);
 signature_tests(k1, k2, "rsa-sha2-256");
 sshkey_free(k1);
 sshkey_free(k2);
 TEST_DONE();

 TEST_START("sign and verify RSA-SHA512");
 k1 = get_private("rsa_1");
 ASSERT_INT_EQ(sshkey_load_public(test_data_file("rsa_2.pub"), &k2,
     ((void*)0)), 0);
 signature_tests(k1, k2, "rsa-sha2-512");
 sshkey_free(k1);
 sshkey_free(k2);
 TEST_DONE();

 TEST_START("sign and verify DSA");
 k1 = get_private("dsa_1");
 ASSERT_INT_EQ(sshkey_load_public(test_data_file("dsa_2.pub"), &k2,
     ((void*)0)), 0);
 signature_tests(k1, k2, ((void*)0));
 sshkey_free(k1);
 sshkey_free(k2);
 TEST_DONE();
 TEST_START("sign and verify ED25519");
 k1 = get_private("ed25519_1");
 ASSERT_INT_EQ(sshkey_load_public(test_data_file("ed25519_2.pub"), &k2,
     ((void*)0)), 0);
 signature_tests(k1, k2, ((void*)0));
 sshkey_free(k1);
 sshkey_free(k2);
 TEST_DONE();

 TEST_START("nested certificate");
 ASSERT_INT_EQ(sshkey_load_cert(test_data_file("rsa_1"), &k1), 0);
 ASSERT_INT_EQ(sshkey_load_public(test_data_file("rsa_1.pub"), &k2,
     ((void*)0)), 0);
 k3 = get_private("rsa_1");
 build_cert(b, k2, "ssh-rsa-cert-v01@openssh.com", k3, k1, ((void*)0));
 ASSERT_INT_EQ(sshkey_from_blob(sshbuf_ptr(b), sshbuf_len(b), &k4),
     SSH_ERR_KEY_CERT_INVALID_SIGN_KEY);
 ASSERT_PTR_EQ(k4, ((void*)0));
 sshkey_free(k1);
 sshkey_free(k2);
 sshkey_free(k3);
 sshbuf_free(b);
 TEST_DONE();

}
