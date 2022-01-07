
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct bitmap {int dummy; } ;
typedef int bbuf ;
typedef struct bitmap BIGNUM ;


 int ASSERT_INT_EQ (int,int) ;
 int ASSERT_INT_GE (int,int ) ;
 int ASSERT_MEM_EQ (int *,int *,size_t) ;
 int ASSERT_PTR_NE (struct bitmap*,int *) ;
 int ASSERT_U8_EQ (int ,int) ;
 int BN_bn2bin (struct bitmap*,int *) ;
 int BN_clear (struct bitmap*) ;
 int BN_clear_bit (struct bitmap*,int) ;
 int BN_free (struct bitmap*) ;
 int BN_is_bit_set (struct bitmap*,int) ;
 struct bitmap* BN_new () ;
 int BN_num_bits (struct bitmap*) ;
 int BN_num_bytes (struct bitmap*) ;
 int BN_set_bit (struct bitmap*,int) ;
 int NTESTS ;
 int TEST_DONE () ;
 int TEST_START (char*) ;
 int bitmap_clear_bit (struct bitmap*,int) ;
 int bitmap_free (struct bitmap*) ;
 int bitmap_from_string (struct bitmap*,int *,size_t) ;
 scalar_t__ bitmap_nbits (struct bitmap*) ;
 size_t bitmap_nbytes (struct bitmap*) ;
 struct bitmap* bitmap_new () ;
 int bitmap_set_bit (struct bitmap*,int) ;
 int bitmap_test_bit (struct bitmap*,int) ;
 int bitmap_to_string (struct bitmap*,int *,int) ;
 int bitmap_zero (struct bitmap*) ;
 int memset (int *,int,int) ;
 int test_subtest_info (char*,int,int,int) ;

void
tests(void)
{
 struct bitmap *b;
 BIGNUM *bn;
 size_t len;
 int i, j, k, n;
 u_char bbuf[1024], bnbuf[1024];
 int r;

 TEST_START("bitmap_new");
 b = bitmap_new();
 ASSERT_PTR_NE(b, ((void*)0));
 bn = BN_new();
 ASSERT_PTR_NE(bn, ((void*)0));
 TEST_DONE();

 TEST_START("bitmap_set_bit / bitmap_test_bit");
 for (i = -1; i < NTESTS; i++) {
  for (j = -1; j < NTESTS; j++) {
   for (k = -1; k < NTESTS; k++) {
    bitmap_zero(b);
    BN_clear(bn);

    test_subtest_info("set %d/%d/%d", i, j, k);

    if (i >= 0) {
     ASSERT_INT_EQ(bitmap_set_bit(b, i), 0);
     ASSERT_INT_EQ(BN_set_bit(bn, i), 1);
    }
    if (j >= 0) {
     ASSERT_INT_EQ(bitmap_set_bit(b, j), 0);
     ASSERT_INT_EQ(BN_set_bit(bn, j), 1);
    }
    if (k >= 0) {
     ASSERT_INT_EQ(bitmap_set_bit(b, k), 0);
     ASSERT_INT_EQ(BN_set_bit(bn, k), 1);
    }


    test_subtest_info("match %d/%d/%d", i, j, k);
    for (n = 0; n < NTESTS; n++) {
     ASSERT_INT_EQ(BN_is_bit_set(bn, n),
         bitmap_test_bit(b, n));
    }


    test_subtest_info("length %d/%d/%d", i, j, k);
    ASSERT_INT_EQ(BN_num_bits(bn),
        (int)bitmap_nbits(b));
    ASSERT_INT_EQ(BN_num_bytes(bn),
        (int)bitmap_nbytes(b));


    test_subtest_info("serialise %d/%d/%d",
        i, j, k);
    len = bitmap_nbytes(b);
    memset(bbuf, 0xfc, sizeof(bbuf));
    ASSERT_INT_EQ(bitmap_to_string(b, bbuf,
        sizeof(bbuf)), 0);
    for (n = len; n < (int)sizeof(bbuf); n++)
     ASSERT_U8_EQ(bbuf[n], 0xfc);
    r = BN_bn2bin(bn, bnbuf);
    ASSERT_INT_GE(r, 0);
    ASSERT_INT_EQ(r, (int)len);
    ASSERT_MEM_EQ(bbuf, bnbuf, len);


    test_subtest_info("deserialise %d/%d/%d",
        i, j, k);
    bitmap_zero(b);
    ASSERT_INT_EQ(bitmap_from_string(b, bnbuf,
        len), 0);
    for (n = 0; n < NTESTS; n++) {
     ASSERT_INT_EQ(BN_is_bit_set(bn, n),
         bitmap_test_bit(b, n));
    }


    test_subtest_info("clear %d/%d/%d",
        i, j, k);
    for (n = 0; n < NTESTS; n++) {
     ASSERT_INT_EQ(bitmap_set_bit(b, n), 0);
     ASSERT_INT_EQ(BN_set_bit(bn, n), 1);
    }
    if (i >= 0) {
     bitmap_clear_bit(b, i);
     BN_clear_bit(bn, i);
    }
    if (j >= 0) {
     bitmap_clear_bit(b, j);
     BN_clear_bit(bn, j);
    }
    if (k >= 0) {
     bitmap_clear_bit(b, k);
     BN_clear_bit(bn, k);
    }
    for (n = 0; n < NTESTS; n++) {
     ASSERT_INT_EQ(BN_is_bit_set(bn, n),
         bitmap_test_bit(b, n));
    }
   }
  }
 }
 bitmap_free(b);
 BN_free(bn);
 TEST_DONE();
}
