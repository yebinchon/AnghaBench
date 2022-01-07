
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshkey {int dummy; } ;
struct sshbuf {int dummy; } ;
struct fuzz {int dummy; } ;


 int ASSERT_INT_EQ (scalar_t__,int ) ;
 int ASSERT_PTR_NE (struct sshbuf*,int *) ;
 int FUZZ_BASE64 ;
 int TEST_DONE () ;
 int TEST_ONERROR (int ,struct fuzz*) ;
 int TEST_START (char*) ;
 struct fuzz* fuzz_begin (int ,int ,int ) ;
 int fuzz_cleanup (struct fuzz*) ;
 int fuzz_done (struct fuzz*) ;
 int fuzz_len (struct fuzz*) ;
 int fuzz_next (struct fuzz*) ;
 int fuzz_ptr (struct fuzz*) ;
 struct sshbuf* load_file (char*) ;
 int onerror ;
 int public_fuzz (struct sshkey*) ;
 int sig_fuzz (struct sshkey*,char*) ;
 int sshbuf_free (struct sshbuf*) ;
 int sshbuf_len (struct sshbuf*) ;
 int sshbuf_mutable_ptr (struct sshbuf*) ;
 struct sshbuf* sshbuf_new () ;
 int sshbuf_put (struct sshbuf*,int ,int ) ;
 int sshbuf_reset (struct sshbuf*) ;
 int sshkey_free (struct sshkey*) ;
 scalar_t__ sshkey_load_cert (int ,struct sshkey**) ;
 scalar_t__ sshkey_parse_private_fileblob (struct sshbuf*,char*,struct sshkey**,int *) ;
 int test_data_file (char*) ;

void
sshkey_fuzz_tests(void)
{
 struct sshkey *k1;
 struct sshbuf *buf, *fuzzed;
 struct fuzz *fuzz;
 int r;


 TEST_START("fuzz RSA private");
 buf = load_file("rsa_1");
 fuzz = fuzz_begin(FUZZ_BASE64, sshbuf_mutable_ptr(buf),
     sshbuf_len(buf));
 ASSERT_INT_EQ(sshkey_parse_private_fileblob(buf, "", &k1, ((void*)0)), 0);
 sshkey_free(k1);
 sshbuf_free(buf);
 ASSERT_PTR_NE(fuzzed = sshbuf_new(), ((void*)0));
 TEST_ONERROR(onerror, fuzz);
 for(; !fuzz_done(fuzz); fuzz_next(fuzz)) {
  r = sshbuf_put(fuzzed, fuzz_ptr(fuzz), fuzz_len(fuzz));
  ASSERT_INT_EQ(r, 0);
  if (sshkey_parse_private_fileblob(fuzzed, "", &k1, ((void*)0)) == 0)
   sshkey_free(k1);
  sshbuf_reset(fuzzed);
 }
 sshbuf_free(fuzzed);
 fuzz_cleanup(fuzz);
 TEST_DONE();

 TEST_START("fuzz RSA new-format private");
 buf = load_file("rsa_n");
 fuzz = fuzz_begin(FUZZ_BASE64, sshbuf_mutable_ptr(buf),
     sshbuf_len(buf));
 ASSERT_INT_EQ(sshkey_parse_private_fileblob(buf, "", &k1, ((void*)0)), 0);
 sshkey_free(k1);
 sshbuf_free(buf);
 ASSERT_PTR_NE(fuzzed = sshbuf_new(), ((void*)0));
 TEST_ONERROR(onerror, fuzz);
 for(; !fuzz_done(fuzz); fuzz_next(fuzz)) {
  r = sshbuf_put(fuzzed, fuzz_ptr(fuzz), fuzz_len(fuzz));
  ASSERT_INT_EQ(r, 0);
  if (sshkey_parse_private_fileblob(fuzzed, "", &k1, ((void*)0)) == 0)
   sshkey_free(k1);
  sshbuf_reset(fuzzed);
 }
 sshbuf_free(fuzzed);
 fuzz_cleanup(fuzz);
 TEST_DONE();

 TEST_START("fuzz DSA private");
 buf = load_file("dsa_1");
 fuzz = fuzz_begin(FUZZ_BASE64, sshbuf_mutable_ptr(buf),
     sshbuf_len(buf));
 ASSERT_INT_EQ(sshkey_parse_private_fileblob(buf, "", &k1, ((void*)0)), 0);
 sshkey_free(k1);
 sshbuf_free(buf);
 ASSERT_PTR_NE(fuzzed = sshbuf_new(), ((void*)0));
 TEST_ONERROR(onerror, fuzz);
 for(; !fuzz_done(fuzz); fuzz_next(fuzz)) {
  r = sshbuf_put(fuzzed, fuzz_ptr(fuzz), fuzz_len(fuzz));
  ASSERT_INT_EQ(r, 0);
  if (sshkey_parse_private_fileblob(fuzzed, "", &k1, ((void*)0)) == 0)
   sshkey_free(k1);
  sshbuf_reset(fuzzed);
 }
 sshbuf_free(fuzzed);
 fuzz_cleanup(fuzz);
 TEST_DONE();

 TEST_START("fuzz DSA new-format private");
 buf = load_file("dsa_n");
 fuzz = fuzz_begin(FUZZ_BASE64, sshbuf_mutable_ptr(buf),
     sshbuf_len(buf));
 ASSERT_INT_EQ(sshkey_parse_private_fileblob(buf, "", &k1, ((void*)0)), 0);
 sshkey_free(k1);
 sshbuf_free(buf);
 ASSERT_PTR_NE(fuzzed = sshbuf_new(), ((void*)0));
 TEST_ONERROR(onerror, fuzz);
 for(; !fuzz_done(fuzz); fuzz_next(fuzz)) {
  r = sshbuf_put(fuzzed, fuzz_ptr(fuzz), fuzz_len(fuzz));
  ASSERT_INT_EQ(r, 0);
  if (sshkey_parse_private_fileblob(fuzzed, "", &k1, ((void*)0)) == 0)
   sshkey_free(k1);
  sshbuf_reset(fuzzed);
 }
 sshbuf_free(fuzzed);
 fuzz_cleanup(fuzz);
 TEST_DONE();
 TEST_START("fuzz Ed25519 private");
 buf = load_file("ed25519_1");
 fuzz = fuzz_begin(FUZZ_BASE64, sshbuf_mutable_ptr(buf),
     sshbuf_len(buf));
 ASSERT_INT_EQ(sshkey_parse_private_fileblob(buf, "", &k1, ((void*)0)), 0);
 sshkey_free(k1);
 sshbuf_free(buf);
 ASSERT_PTR_NE(fuzzed = sshbuf_new(), ((void*)0));
 TEST_ONERROR(onerror, fuzz);
 for(; !fuzz_done(fuzz); fuzz_next(fuzz)) {
  r = sshbuf_put(fuzzed, fuzz_ptr(fuzz), fuzz_len(fuzz));
  ASSERT_INT_EQ(r, 0);
  if (sshkey_parse_private_fileblob(fuzzed, "", &k1, ((void*)0)) == 0)
   sshkey_free(k1);
  sshbuf_reset(fuzzed);
 }
 sshbuf_free(fuzzed);
 fuzz_cleanup(fuzz);
 TEST_DONE();

 TEST_START("fuzz RSA public");
 buf = load_file("rsa_1");
 ASSERT_INT_EQ(sshkey_parse_private_fileblob(buf, "", &k1, ((void*)0)), 0);
 sshbuf_free(buf);
 public_fuzz(k1);
 sshkey_free(k1);
 TEST_DONE();

 TEST_START("fuzz RSA cert");
 ASSERT_INT_EQ(sshkey_load_cert(test_data_file("rsa_1"), &k1), 0);
 public_fuzz(k1);
 sshkey_free(k1);
 TEST_DONE();

 TEST_START("fuzz DSA public");
 buf = load_file("dsa_1");
 ASSERT_INT_EQ(sshkey_parse_private_fileblob(buf, "", &k1, ((void*)0)), 0);
 sshbuf_free(buf);
 public_fuzz(k1);
 sshkey_free(k1);
 TEST_DONE();

 TEST_START("fuzz DSA cert");
 ASSERT_INT_EQ(sshkey_load_cert(test_data_file("dsa_1"), &k1), 0);
 public_fuzz(k1);
 sshkey_free(k1);
 TEST_DONE();
 TEST_START("fuzz Ed25519 public");
 buf = load_file("ed25519_1");
 ASSERT_INT_EQ(sshkey_parse_private_fileblob(buf, "", &k1, ((void*)0)), 0);
 sshbuf_free(buf);
 public_fuzz(k1);
 sshkey_free(k1);
 TEST_DONE();

 TEST_START("fuzz Ed25519 cert");
 ASSERT_INT_EQ(sshkey_load_cert(test_data_file("ed25519_1"), &k1), 0);
 public_fuzz(k1);
 sshkey_free(k1);
 TEST_DONE();

 TEST_START("fuzz RSA sig");
 buf = load_file("rsa_1");
 ASSERT_INT_EQ(sshkey_parse_private_fileblob(buf, "", &k1, ((void*)0)), 0);
 sshbuf_free(buf);
 sig_fuzz(k1, "ssh-rsa");
 sshkey_free(k1);
 TEST_DONE();

 TEST_START("fuzz RSA SHA256 sig");
 buf = load_file("rsa_1");
 ASSERT_INT_EQ(sshkey_parse_private_fileblob(buf, "", &k1, ((void*)0)), 0);
 sshbuf_free(buf);
 sig_fuzz(k1, "rsa-sha2-256");
 sshkey_free(k1);
 TEST_DONE();

 TEST_START("fuzz RSA SHA512 sig");
 buf = load_file("rsa_1");
 ASSERT_INT_EQ(sshkey_parse_private_fileblob(buf, "", &k1, ((void*)0)), 0);
 sshbuf_free(buf);
 sig_fuzz(k1, "rsa-sha2-512");
 sshkey_free(k1);
 TEST_DONE();

 TEST_START("fuzz DSA sig");
 buf = load_file("dsa_1");
 ASSERT_INT_EQ(sshkey_parse_private_fileblob(buf, "", &k1, ((void*)0)), 0);
 sshbuf_free(buf);
 sig_fuzz(k1, ((void*)0));
 sshkey_free(k1);
 TEST_DONE();
 TEST_START("fuzz Ed25519 sig");
 buf = load_file("ed25519_1");
 ASSERT_INT_EQ(sshkey_parse_private_fileblob(buf, "", &k1, ((void*)0)), 0);
 sshbuf_free(buf);
 sig_fuzz(k1, ((void*)0));
 sshkey_free(k1);
 TEST_DONE();



}
