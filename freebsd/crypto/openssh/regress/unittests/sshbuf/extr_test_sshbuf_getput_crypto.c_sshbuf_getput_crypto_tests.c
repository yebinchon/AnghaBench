
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
typedef int u_int16_t ;
typedef int u_char ;
struct sshbuf {int dummy; } ;
typedef int expec256 ;
typedef int expbn2 ;
typedef int expbn1 ;
typedef struct sshbuf EC_POINT ;
typedef struct sshbuf EC_KEY ;
typedef struct sshbuf BIGNUM ;


 int ASSERT_BIGNUM_EQ (struct sshbuf*,struct sshbuf*) ;
 int ASSERT_INT_EQ (int,int) ;
 int ASSERT_MEM_EQ (int const*,int*,int) ;
 int ASSERT_PTR_NE (struct sshbuf*,int *) ;
 int ASSERT_SIZE_T_EQ (size_t,int) ;
 int ASSERT_U16_EQ (int ,int ) ;
 int ASSERT_U32_EQ (int ,scalar_t__) ;
 int ASSERT_U8_EQ (int const,int) ;
 int BN_cmp (struct sshbuf*,struct sshbuf*) ;
 int BN_free (struct sshbuf*) ;
 struct sshbuf* BN_new () ;
 int BN_num_bits (struct sshbuf*) ;
 int BN_num_bytes (struct sshbuf*) ;
 int EC_KEY_free (struct sshbuf*) ;
 int EC_KEY_get0_group (struct sshbuf*) ;
 int EC_KEY_get0_public_key (struct sshbuf*) ;
 struct sshbuf* EC_KEY_new_by_curve_name (int) ;
 int EC_KEY_set_public_key (struct sshbuf*,struct sshbuf*) ;
 int EC_POINT_free (struct sshbuf*) ;
 int EC_POINT_get_affine_coordinates_GFp (int ,int ,struct sshbuf*,struct sshbuf*,int *) ;
 struct sshbuf* EC_POINT_new (int ) ;
 int EC_POINT_set_affine_coordinates_GFp (int ,struct sshbuf*,struct sshbuf*,struct sshbuf*,int *) ;
 int MKBN (char const*,struct sshbuf*) ;
 int NID_X9_62_prime256v1 ;
 int PEEK_U16 (int const*) ;
 int PEEK_U32 (int const*) ;
 int SSH_ERR_BIGNUM_IS_NEGATIVE ;
 int SSH_ERR_BIGNUM_TOO_LARGE ;
 int SSH_ERR_MESSAGE_INCOMPLETE ;
 int SSH_ERR_NO_BUFFER_SPACE ;
 int TEST_DONE () ;
 int TEST_START (char*) ;
 int sshbuf_free (struct sshbuf*) ;
 int sshbuf_get_bignum1 (struct sshbuf*,struct sshbuf*) ;
 int sshbuf_get_bignum2 (struct sshbuf*,struct sshbuf*) ;
 int sshbuf_get_eckey (struct sshbuf*,struct sshbuf*) ;
 int sshbuf_get_string_direct (struct sshbuf*,int const**,size_t*) ;
 size_t sshbuf_len (struct sshbuf*) ;
 struct sshbuf* sshbuf_new () ;
 int const* sshbuf_ptr (struct sshbuf*) ;
 int sshbuf_put (struct sshbuf*,int*,int) ;
 int sshbuf_put_bignum1 (struct sshbuf*,struct sshbuf*) ;
 int sshbuf_put_bignum2 (struct sshbuf*,struct sshbuf*) ;
 int sshbuf_put_eckey (struct sshbuf*,struct sshbuf*) ;
 int sshbuf_put_string (struct sshbuf*,int*,int) ;
 int sshbuf_put_u16 (struct sshbuf*,int) ;
 int sshbuf_put_u32 (struct sshbuf*,int) ;
 int sshbuf_put_u8 (struct sshbuf*,int) ;
 int sshbuf_reserve (struct sshbuf*,int,int *) ;
 int sshbuf_set_max_size (struct sshbuf*,int) ;

void
sshbuf_getput_crypto_tests(void)
{
 struct sshbuf *p1;
 BIGNUM *bn, *bn2;

 const char *hexbn1 = "0102030405060708090a0b0c0d0e0f10";

 const char *hexbn2 = "f0e0d0c0b0a0908070605040302010007fff11";
 u_char expbn1[] = {
  0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08,
  0x09, 0x0a, 0x0b, 0x0c, 0x0d, 0x0e, 0x0f, 0x10,
 };
 u_char expbn2[] = {
  0xf0, 0xe0, 0xd0, 0xc0, 0xb0, 0xa0, 0x90, 0x80,
  0x70, 0x60, 0x50, 0x40, 0x30, 0x20, 0x10, 0x00,
  0x7f, 0xff, 0x11
 };
 int r;







 TEST_START("sshbuf_put_bignum1");
 do { bn = ((void*)0); ASSERT_INT_GT(BN_hex2bn(&bn, hexbn1), 0); } while (0);
 p1 = sshbuf_new();
 ASSERT_PTR_NE(p1, ((void*)0));
 ASSERT_INT_EQ(sshbuf_put_bignum1(p1, bn), 0);
 ASSERT_SIZE_T_EQ(sshbuf_len(p1), sizeof(expbn1) + 2);
 ASSERT_U16_EQ(PEEK_U16(sshbuf_ptr(p1)), (u_int16_t)BN_num_bits(bn));
 ASSERT_MEM_EQ(sshbuf_ptr(p1) + 2, expbn1, sizeof(expbn1));
 BN_free(bn);
 sshbuf_free(p1);
 TEST_DONE();

 TEST_START("sshbuf_put_bignum1 limited");
 do { bn = ((void*)0); ASSERT_INT_GT(BN_hex2bn(&bn, hexbn1), 0); } while (0);
 p1 = sshbuf_new();
 ASSERT_PTR_NE(p1, ((void*)0));
 ASSERT_INT_EQ(sshbuf_set_max_size(p1, sizeof(expbn1) + 1), 0);
 r = sshbuf_put_bignum1(p1, bn);
 ASSERT_INT_EQ(r, SSH_ERR_NO_BUFFER_SPACE);
 ASSERT_SIZE_T_EQ(sshbuf_len(p1), 0);
 BN_free(bn);
 sshbuf_free(p1);
 TEST_DONE();

 TEST_START("sshbuf_put_bignum1 bn2");
 do { bn = ((void*)0); ASSERT_INT_GT(BN_hex2bn(&bn, hexbn2), 0); } while (0);
 p1 = sshbuf_new();
 ASSERT_PTR_NE(p1, ((void*)0));
 ASSERT_INT_EQ(sshbuf_put_bignum1(p1, bn), 0);
 ASSERT_SIZE_T_EQ(sshbuf_len(p1), sizeof(expbn2) + 2);
 ASSERT_U16_EQ(PEEK_U16(sshbuf_ptr(p1)), (u_int16_t)BN_num_bits(bn));
 ASSERT_MEM_EQ(sshbuf_ptr(p1) + 2, expbn2, sizeof(expbn2));
 BN_free(bn);
 sshbuf_free(p1);
 TEST_DONE();

 TEST_START("sshbuf_put_bignum1 bn2 limited");
 do { bn = ((void*)0); ASSERT_INT_GT(BN_hex2bn(&bn, hexbn2), 0); } while (0);
 p1 = sshbuf_new();
 ASSERT_PTR_NE(p1, ((void*)0));
 ASSERT_INT_EQ(sshbuf_set_max_size(p1, sizeof(expbn1) + 1), 0);
 r = sshbuf_put_bignum1(p1, bn);
 ASSERT_INT_EQ(r, SSH_ERR_NO_BUFFER_SPACE);
 ASSERT_SIZE_T_EQ(sshbuf_len(p1), 0);
 BN_free(bn);
 sshbuf_free(p1);
 TEST_DONE();

 TEST_START("sshbuf_put_bignum2");
 do { bn = ((void*)0); ASSERT_INT_GT(BN_hex2bn(&bn, hexbn1), 0); } while (0);
 p1 = sshbuf_new();
 ASSERT_PTR_NE(p1, ((void*)0));
 ASSERT_INT_EQ(sshbuf_put_bignum2(p1, bn), 0);
 ASSERT_SIZE_T_EQ(sshbuf_len(p1), sizeof(expbn1) + 4);
 ASSERT_U32_EQ(PEEK_U32(sshbuf_ptr(p1)), (u_int32_t)BN_num_bytes(bn));
 ASSERT_MEM_EQ(sshbuf_ptr(p1) + 4, expbn1, sizeof(expbn1));
 BN_free(bn);
 sshbuf_free(p1);
 TEST_DONE();

 TEST_START("sshbuf_put_bignum2 limited");
 do { bn = ((void*)0); ASSERT_INT_GT(BN_hex2bn(&bn, hexbn1), 0); } while (0);
 p1 = sshbuf_new();
 ASSERT_PTR_NE(p1, ((void*)0));
 ASSERT_INT_EQ(sshbuf_set_max_size(p1, sizeof(expbn1) + 3), 0);
 r = sshbuf_put_bignum2(p1, bn);
 ASSERT_INT_EQ(r, SSH_ERR_NO_BUFFER_SPACE);
 ASSERT_SIZE_T_EQ(sshbuf_len(p1), 0);
 BN_free(bn);
 sshbuf_free(p1);
 TEST_DONE();

 TEST_START("sshbuf_put_bignum2 bn2");
 do { bn = ((void*)0); ASSERT_INT_GT(BN_hex2bn(&bn, hexbn2), 0); } while (0);
 p1 = sshbuf_new();
 ASSERT_PTR_NE(p1, ((void*)0));
 ASSERT_INT_EQ(sshbuf_put_bignum2(p1, bn), 0);
 ASSERT_SIZE_T_EQ(sshbuf_len(p1), sizeof(expbn2) + 4 + 1);
 ASSERT_U32_EQ(PEEK_U32(sshbuf_ptr(p1)), (u_int32_t)BN_num_bytes(bn) + 1);
 ASSERT_U8_EQ(*(sshbuf_ptr(p1) + 4), 0x00);
 ASSERT_MEM_EQ(sshbuf_ptr(p1) + 5, expbn2, sizeof(expbn2));
 BN_free(bn);
 sshbuf_free(p1);
 TEST_DONE();

 TEST_START("sshbuf_put_bignum2 bn2 limited");
 do { bn = ((void*)0); ASSERT_INT_GT(BN_hex2bn(&bn, hexbn2), 0); } while (0);
 p1 = sshbuf_new();
 ASSERT_PTR_NE(p1, ((void*)0));
 ASSERT_INT_EQ(sshbuf_set_max_size(p1, sizeof(expbn2) + 3), 0);
 r = sshbuf_put_bignum2(p1, bn);
 ASSERT_INT_EQ(r, SSH_ERR_NO_BUFFER_SPACE);
 ASSERT_SIZE_T_EQ(sshbuf_len(p1), 0);
 BN_free(bn);
 sshbuf_free(p1);
 TEST_DONE();

 TEST_START("sshbuf_get_bignum1");
 do { bn = ((void*)0); ASSERT_INT_GT(BN_hex2bn(&bn, hexbn1), 0); } while (0);
 p1 = sshbuf_new();
 ASSERT_PTR_NE(p1, ((void*)0));
 ASSERT_INT_EQ(sshbuf_put_u16(p1, BN_num_bits(bn)), 0);
 ASSERT_INT_EQ(sshbuf_put(p1, expbn1, sizeof(expbn1)), 0);
 ASSERT_SIZE_T_EQ(sshbuf_len(p1), 2 + sizeof(expbn1));
 ASSERT_INT_EQ(sshbuf_put_u16(p1, 0xd00f), 0);
 bn2 = BN_new();
 ASSERT_INT_EQ(sshbuf_get_bignum1(p1, bn2), 0);
 ASSERT_BIGNUM_EQ(bn, bn2);
 ASSERT_SIZE_T_EQ(sshbuf_len(p1), 2);
 BN_free(bn);
 BN_free(bn2);
 sshbuf_free(p1);
 TEST_DONE();

 TEST_START("sshbuf_get_bignum1 truncated");
 do { bn = ((void*)0); ASSERT_INT_GT(BN_hex2bn(&bn, hexbn1), 0); } while (0);
 p1 = sshbuf_new();
 ASSERT_PTR_NE(p1, ((void*)0));
 ASSERT_INT_EQ(sshbuf_put_u16(p1, BN_num_bits(bn)), 0);
 ASSERT_INT_EQ(sshbuf_put(p1, expbn1, sizeof(expbn1) - 1), 0);
 ASSERT_SIZE_T_EQ(sshbuf_len(p1), 2 + sizeof(expbn1) - 1);
 bn2 = BN_new();
 r = sshbuf_get_bignum1(p1, bn2);
 ASSERT_INT_EQ(r, SSH_ERR_MESSAGE_INCOMPLETE);
 ASSERT_SIZE_T_EQ(sshbuf_len(p1), 2 + sizeof(expbn1) - 1);
 BN_free(bn);
 BN_free(bn2);
 sshbuf_free(p1);
 TEST_DONE();

 TEST_START("sshbuf_get_bignum1 giant");
 do { bn = ((void*)0); ASSERT_INT_GT(BN_hex2bn(&bn, hexbn1), 0); } while (0);
 p1 = sshbuf_new();
 ASSERT_PTR_NE(p1, ((void*)0));
 ASSERT_INT_EQ(sshbuf_put_u16(p1, 0xffff), 0);
 ASSERT_INT_EQ(sshbuf_reserve(p1, (0xffff + 7) / 8, ((void*)0)), 0);
 ASSERT_SIZE_T_EQ(sshbuf_len(p1), 2 + ((0xffff + 7) / 8));
 bn2 = BN_new();
 r = sshbuf_get_bignum1(p1, bn2);
 ASSERT_INT_EQ(r, SSH_ERR_BIGNUM_TOO_LARGE);
 ASSERT_SIZE_T_EQ(sshbuf_len(p1), 2 + ((0xffff + 7) / 8));
 BN_free(bn);
 BN_free(bn2);
 sshbuf_free(p1);
 TEST_DONE();

 TEST_START("sshbuf_get_bignum1 bn2");
 do { bn = ((void*)0); ASSERT_INT_GT(BN_hex2bn(&bn, hexbn2), 0); } while (0);
 p1 = sshbuf_new();
 ASSERT_PTR_NE(p1, ((void*)0));
 ASSERT_INT_EQ(sshbuf_put_u16(p1, BN_num_bits(bn)), 0);
 ASSERT_INT_EQ(sshbuf_put(p1, expbn2, sizeof(expbn2)), 0);
 ASSERT_SIZE_T_EQ(sshbuf_len(p1), 2 + sizeof(expbn2));
 ASSERT_INT_EQ(sshbuf_put_u16(p1, 0xd00f), 0);
 bn2 = BN_new();
 ASSERT_INT_EQ(sshbuf_get_bignum1(p1, bn2), 0);
 ASSERT_BIGNUM_EQ(bn, bn2);
 ASSERT_SIZE_T_EQ(sshbuf_len(p1), 2);
 BN_free(bn);
 BN_free(bn2);
 sshbuf_free(p1);
 TEST_DONE();

 TEST_START("sshbuf_get_bignum1 bn2 truncated");
 do { bn = ((void*)0); ASSERT_INT_GT(BN_hex2bn(&bn, hexbn2), 0); } while (0);
 p1 = sshbuf_new();
 ASSERT_PTR_NE(p1, ((void*)0));
 ASSERT_INT_EQ(sshbuf_put_u16(p1, BN_num_bits(bn)), 0);
 ASSERT_INT_EQ(sshbuf_put(p1, expbn2, sizeof(expbn2) - 1), 0);
 ASSERT_SIZE_T_EQ(sshbuf_len(p1), 2 + sizeof(expbn2) - 1);
 bn2 = BN_new();
 r = sshbuf_get_bignum1(p1, bn2);
 ASSERT_INT_EQ(r, SSH_ERR_MESSAGE_INCOMPLETE);
 ASSERT_SIZE_T_EQ(sshbuf_len(p1), 2 + sizeof(expbn2) - 1);
 BN_free(bn);
 BN_free(bn2);
 sshbuf_free(p1);
 TEST_DONE();

 TEST_START("sshbuf_get_bignum2");
 do { bn = ((void*)0); ASSERT_INT_GT(BN_hex2bn(&bn, hexbn1), 0); } while (0);
 p1 = sshbuf_new();
 ASSERT_PTR_NE(p1, ((void*)0));
 ASSERT_INT_EQ(sshbuf_put_u32(p1, BN_num_bytes(bn)), 0);
 ASSERT_INT_EQ(sshbuf_put(p1, expbn1, sizeof(expbn1)), 0);
 ASSERT_SIZE_T_EQ(sshbuf_len(p1), 4 + sizeof(expbn1));
 ASSERT_INT_EQ(sshbuf_put_u16(p1, 0xd00f), 0);
 bn2 = BN_new();
 ASSERT_INT_EQ(sshbuf_get_bignum2(p1, bn2), 0);
 ASSERT_BIGNUM_EQ(bn, bn2);
 ASSERT_SIZE_T_EQ(sshbuf_len(p1), 2);
 BN_free(bn);
 BN_free(bn2);
 sshbuf_free(p1);
 TEST_DONE();

 TEST_START("sshbuf_get_bignum2 truncated");
 do { bn = ((void*)0); ASSERT_INT_GT(BN_hex2bn(&bn, hexbn1), 0); } while (0);
 p1 = sshbuf_new();
 ASSERT_PTR_NE(p1, ((void*)0));
 ASSERT_INT_EQ(sshbuf_put_u32(p1, BN_num_bytes(bn)), 0);
 ASSERT_INT_EQ(sshbuf_put(p1, expbn1, sizeof(expbn1) - 1), 0);
 bn2 = BN_new();
 r = sshbuf_get_bignum2(p1, bn2);
 ASSERT_INT_EQ(r, SSH_ERR_MESSAGE_INCOMPLETE);
 ASSERT_SIZE_T_EQ(sshbuf_len(p1), sizeof(expbn1) + 3);
 BN_free(bn);
 BN_free(bn2);
 sshbuf_free(p1);
 TEST_DONE();

 TEST_START("sshbuf_get_bignum2 giant");
 do { bn = ((void*)0); ASSERT_INT_GT(BN_hex2bn(&bn, hexbn1), 0); } while (0);
 p1 = sshbuf_new();
 ASSERT_PTR_NE(p1, ((void*)0));
 ASSERT_INT_EQ(sshbuf_put_u32(p1, 65536), 0);
 ASSERT_INT_EQ(sshbuf_reserve(p1, 65536, ((void*)0)), 0);
 bn2 = BN_new();
 r = sshbuf_get_bignum2(p1, bn2);
 ASSERT_INT_EQ(r, SSH_ERR_BIGNUM_TOO_LARGE);
 ASSERT_SIZE_T_EQ(sshbuf_len(p1), 65536 + 4);
 BN_free(bn);
 BN_free(bn2);
 sshbuf_free(p1);
 TEST_DONE();

 TEST_START("sshbuf_get_bignum2 bn2");
 do { bn = ((void*)0); ASSERT_INT_GT(BN_hex2bn(&bn, hexbn2), 0); } while (0);
 p1 = sshbuf_new();
 ASSERT_PTR_NE(p1, ((void*)0));
 ASSERT_INT_EQ(sshbuf_put_u32(p1, BN_num_bytes(bn) + 1), 0);
 ASSERT_INT_EQ(sshbuf_put_u8(p1, 0x00), 0);
 ASSERT_INT_EQ(sshbuf_put(p1, expbn2, sizeof(expbn2)), 0);
 ASSERT_SIZE_T_EQ(sshbuf_len(p1), 4 + 1 + sizeof(expbn2));
 ASSERT_INT_EQ(sshbuf_put_u16(p1, 0xd00f), 0);
 bn2 = BN_new();
 ASSERT_INT_EQ(sshbuf_get_bignum2(p1, bn2), 0);
 ASSERT_BIGNUM_EQ(bn, bn2);
 ASSERT_SIZE_T_EQ(sshbuf_len(p1), 2);
 BN_free(bn);
 BN_free(bn2);
 sshbuf_free(p1);
 TEST_DONE();

 TEST_START("sshbuf_get_bignum2 bn2 truncated");
 do { bn = ((void*)0); ASSERT_INT_GT(BN_hex2bn(&bn, hexbn2), 0); } while (0);
 p1 = sshbuf_new();
 ASSERT_PTR_NE(p1, ((void*)0));
 ASSERT_INT_EQ(sshbuf_put_u32(p1, BN_num_bytes(bn) + 1), 0);
 ASSERT_INT_EQ(sshbuf_put_u8(p1, 0x00), 0);
 ASSERT_INT_EQ(sshbuf_put(p1, expbn2, sizeof(expbn2) - 1), 0);
 bn2 = BN_new();
 r = sshbuf_get_bignum2(p1, bn2);
 ASSERT_INT_EQ(r, SSH_ERR_MESSAGE_INCOMPLETE);
 ASSERT_SIZE_T_EQ(sshbuf_len(p1), sizeof(expbn2) + 1 + 4 - 1);
 BN_free(bn);
 BN_free(bn2);
 sshbuf_free(p1);
 TEST_DONE();

 TEST_START("sshbuf_get_bignum2 bn2 negative");
 do { bn = ((void*)0); ASSERT_INT_GT(BN_hex2bn(&bn, hexbn2), 0); } while (0);
 p1 = sshbuf_new();
 ASSERT_PTR_NE(p1, ((void*)0));
 ASSERT_INT_EQ(sshbuf_put_u32(p1, BN_num_bytes(bn)), 0);
 ASSERT_INT_EQ(sshbuf_put(p1, expbn2, sizeof(expbn2)), 0);
 bn2 = BN_new();
 r = sshbuf_get_bignum2(p1, bn2);
 ASSERT_INT_EQ(r, SSH_ERR_BIGNUM_IS_NEGATIVE);
 ASSERT_SIZE_T_EQ(sshbuf_len(p1), sizeof(expbn2) + 4);
 BN_free(bn);
 BN_free(bn2);
 sshbuf_free(p1);
 TEST_DONE();
}
