
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int AES_BLOCK_SIZE ;

__attribute__((used)) static void dbl(u8 *pad)
{
 int i, carry;

 carry = pad[0] & 0x80;
 for (i = 0; i < AES_BLOCK_SIZE - 1; i++)
  pad[i] = (pad[i] << 1) | (pad[i + 1] >> 7);
 pad[AES_BLOCK_SIZE - 1] <<= 1;
 if (carry)
  pad[AES_BLOCK_SIZE - 1] ^= 0x87;
}
