
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int64_t ;
typedef int u_int32_t ;
typedef int u_int16_t ;
typedef int u_char ;
struct sshbuf {int dummy; } ;
typedef struct sshbuf EC_KEY ;
typedef int BIGNUM ;


 int ASSERT_INT_EQ (int ,int ) ;
 int ASSERT_PTR_NE (struct sshbuf*,int *) ;
 int BN_clear_free (int *) ;
 int * BN_new () ;
 int EC_KEY_free (struct sshbuf*) ;
 struct sshbuf* EC_KEY_new_by_curve_name (int ) ;
 int NID_X9_62_prime256v1 ;
 int bzero (int *,size_t) ;
 int free (int *) ;
 int sshbuf_free (struct sshbuf*) ;
 int sshbuf_get_bignum1 (struct sshbuf*,int *) ;
 int sshbuf_get_bignum2 (struct sshbuf*,int *) ;
 int sshbuf_get_eckey (struct sshbuf*,struct sshbuf*) ;
 scalar_t__ sshbuf_get_string (struct sshbuf*,int **,size_t*) ;
 int sshbuf_get_u16 (struct sshbuf*,int *) ;
 int sshbuf_get_u32 (struct sshbuf*,int *) ;
 int sshbuf_get_u64 (struct sshbuf*,int *) ;
 int sshbuf_get_u8 (struct sshbuf*,int *) ;
 struct sshbuf* sshbuf_new () ;
 int sshbuf_put (struct sshbuf*,int *,size_t) ;

__attribute__((used)) static void
attempt_parse_blob(u_char *blob, size_t len)
{
 struct sshbuf *p1;
 BIGNUM *bn;



 u_char *s;
 size_t l;
 u_int8_t u8;
 u_int16_t u16;
 u_int32_t u32;
 u_int64_t u64;

 p1 = sshbuf_new();
 ASSERT_PTR_NE(p1, ((void*)0));
 ASSERT_INT_EQ(sshbuf_put(p1, blob, len), 0);
 sshbuf_get_u8(p1, &u8);
 sshbuf_get_u16(p1, &u16);
 sshbuf_get_u32(p1, &u32);
 sshbuf_get_u64(p1, &u64);
 if (sshbuf_get_string(p1, &s, &l) == 0) {
  bzero(s, l);
  free(s);
 }
 bn = BN_new();
 sshbuf_get_bignum1(p1, bn);
 BN_clear_free(bn);
 bn = BN_new();
 sshbuf_get_bignum2(p1, bn);
 BN_clear_free(bn);






 sshbuf_free(p1);
}
