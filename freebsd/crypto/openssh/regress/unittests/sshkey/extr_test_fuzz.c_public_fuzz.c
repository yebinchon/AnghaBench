
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshkey {int dummy; } ;
struct sshbuf {int dummy; } ;
struct fuzz {int dummy; } ;


 int ASSERT_INT_EQ (scalar_t__,int ) ;
 int ASSERT_PTR_NE (struct sshbuf*,int *) ;
 int FUZZ_1_BIT_FLIP ;
 int FUZZ_1_BYTE_FLIP ;
 int FUZZ_TRUNCATE_END ;
 int FUZZ_TRUNCATE_START ;
 int TEST_ONERROR (int ,struct fuzz*) ;
 struct fuzz* fuzz_begin (int,int ,int ) ;
 int fuzz_cleanup (struct fuzz*) ;
 int fuzz_done (struct fuzz*) ;
 int fuzz_len (struct fuzz*) ;
 int fuzz_next (struct fuzz*) ;
 int fuzz_ptr (struct fuzz*) ;
 int onerror ;
 int sshbuf_free (struct sshbuf*) ;
 int sshbuf_len (struct sshbuf*) ;
 int sshbuf_mutable_ptr (struct sshbuf*) ;
 struct sshbuf* sshbuf_new () ;
 int sshbuf_ptr (struct sshbuf*) ;
 int sshkey_free (struct sshkey*) ;
 scalar_t__ sshkey_from_blob (int ,int ,struct sshkey**) ;
 scalar_t__ sshkey_putb (struct sshkey*,struct sshbuf*) ;

__attribute__((used)) static void
public_fuzz(struct sshkey *k)
{
 struct sshkey *k1;
 struct sshbuf *buf;
 struct fuzz *fuzz;

 ASSERT_PTR_NE(buf = sshbuf_new(), ((void*)0));
 ASSERT_INT_EQ(sshkey_putb(k, buf), 0);

 fuzz = fuzz_begin(FUZZ_1_BIT_FLIP |
     FUZZ_1_BYTE_FLIP |
     FUZZ_TRUNCATE_START | FUZZ_TRUNCATE_END,
     sshbuf_mutable_ptr(buf), sshbuf_len(buf));
 ASSERT_INT_EQ(sshkey_from_blob(sshbuf_ptr(buf), sshbuf_len(buf),
     &k1), 0);
 sshkey_free(k1);
 sshbuf_free(buf);
 TEST_ONERROR(onerror, fuzz);
 for(; !fuzz_done(fuzz); fuzz_next(fuzz)) {
  if (sshkey_from_blob(fuzz_ptr(fuzz), fuzz_len(fuzz), &k1) == 0)
   sshkey_free(k1);
 }
 fuzz_cleanup(fuzz);
}
