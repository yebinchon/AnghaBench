
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int PWBLOCK_LEN ;
 int WPA_PUT_LE16 (int *,size_t) ;
 scalar_t__ os_get_random (int *,size_t) ;
 int os_memmove (int *,int *,size_t) ;
 int os_memset (int *,int ,int ) ;
 int rc4_skip (int const*,int,int ,int *,int ) ;
 scalar_t__ utf8_to_ucs2 (int const*,size_t,int *,int,size_t*) ;

int encrypt_pw_block_with_password_hash(
 const u8 *password, size_t password_len,
 const u8 *password_hash, u8 *pw_block)
{
 size_t ucs2_len, offset;
 u8 *pos;

 os_memset(pw_block, 0, PWBLOCK_LEN);

 if (utf8_to_ucs2(password, password_len, pw_block, 512, &ucs2_len) < 0
     || ucs2_len > 256)
  return -1;

 offset = (256 - ucs2_len) * 2;
 if (offset != 0) {
  os_memmove(pw_block + offset, pw_block, ucs2_len * 2);
  if (os_get_random(pw_block, offset) < 0)
   return -1;
 }




 pos = &pw_block[2 * 256];
 WPA_PUT_LE16(pos, password_len * 2);
 rc4_skip(password_hash, 16, 0, pw_block, PWBLOCK_LEN);
 return 0;
}
