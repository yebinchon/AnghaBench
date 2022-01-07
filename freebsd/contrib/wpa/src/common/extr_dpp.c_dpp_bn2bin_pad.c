
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int BIGNUM ;


 int BN_bn2bin (int const*,int *) ;
 int BN_num_bytes (int const*) ;
 int os_memset (int *,int ,int) ;

__attribute__((used)) static int dpp_bn2bin_pad(const BIGNUM *bn, u8 *pos, size_t len)
{
 int num_bytes, offset;

 num_bytes = BN_num_bytes(bn);
 if ((size_t) num_bytes > len)
  return -1;
 offset = len - num_bytes;
 os_memset(pos, 0, offset);
 BN_bn2bin(bn, pos + offset);
 return 0;
}
