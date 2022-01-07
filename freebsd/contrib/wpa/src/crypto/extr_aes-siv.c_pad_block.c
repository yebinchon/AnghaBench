
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 size_t AES_BLOCK_SIZE ;
 int os_memcpy (int*,int const*,size_t) ;
 int os_memset (int*,int ,size_t) ;

__attribute__((used)) static void pad_block(u8 *pad, const u8 *addr, size_t len)
{
 os_memset(pad, 0, AES_BLOCK_SIZE);
 os_memcpy(pad, addr, len);

 if (len < AES_BLOCK_SIZE)
  pad[len] = 0x80;
}
