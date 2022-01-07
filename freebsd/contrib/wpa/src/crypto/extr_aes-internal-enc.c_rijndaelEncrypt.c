
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int const GETU32 (int const*) ;
 int PUTU32 (int *,int) ;
 int ROUND (int,int ,int ) ;
 int const TE41 (int) ;
 int const TE42 (int) ;
 int const TE43 (int) ;
 int const TE44 (int) ;
 int s ;
 int t ;

__attribute__((used)) static void rijndaelEncrypt(const u32 rk[], int Nr, const u8 pt[16], u8 ct[16])
{
 u32 s0, s1, s2, s3, t0, t1, t2, t3;

 int r;






 s0 = GETU32(pt ) ^ rk[0];
 s1 = GETU32(pt + 4) ^ rk[1];
 s2 = GETU32(pt + 8) ^ rk[2];
 s3 = GETU32(pt + 12) ^ rk[3];
 r = Nr >> 1;
 for (;;) {
  t0 = TE0(s0) ^ TE1(s1) ^ TE2(s2) ^ TE3(s3) ^ rk[4 * 1]; t1 = TE0(s1) ^ TE1(s2) ^ TE2(s3) ^ TE3(s0) ^ rk[4 * 1 + 1]; t2 = TE0(s2) ^ TE1(s3) ^ TE2(s0) ^ TE3(s1) ^ rk[4 * 1 + 2]; t3 = TE0(s3) ^ TE1(s0) ^ TE2(s1) ^ TE3(s2) ^ rk[4 * 1 + 3];
  rk += 8;
  if (--r == 0)
   break;
  s0 = TE0(t0) ^ TE1(t1) ^ TE2(t2) ^ TE3(t3) ^ rk[4 * 0]; s1 = TE0(t1) ^ TE1(t2) ^ TE2(t3) ^ TE3(t0) ^ rk[4 * 0 + 1]; s2 = TE0(t2) ^ TE1(t3) ^ TE2(t0) ^ TE3(t1) ^ rk[4 * 0 + 2]; s3 = TE0(t3) ^ TE1(t0) ^ TE2(t1) ^ TE3(t2) ^ rk[4 * 0 + 3];
 }
 s0 = TE41(t0) ^ TE42(t1) ^ TE43(t2) ^ TE44(t3) ^ rk[0];
 PUTU32(ct , s0);
 s1 = TE41(t1) ^ TE42(t2) ^ TE43(t3) ^ TE44(t0) ^ rk[1];
 PUTU32(ct + 4, s1);
 s2 = TE41(t2) ^ TE42(t3) ^ TE43(t0) ^ TE44(t1) ^ rk[2];
 PUTU32(ct + 8, s2);
 s3 = TE41(t3) ^ TE42(t0) ^ TE43(t1) ^ TE44(t2) ^ rk[3];
 PUTU32(ct + 12, s3);
}
