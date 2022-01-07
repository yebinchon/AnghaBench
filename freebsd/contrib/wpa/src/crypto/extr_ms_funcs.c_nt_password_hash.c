
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int buf ;


 int md4_vector (int,int const**,size_t*,int *) ;
 scalar_t__ utf8_to_ucs2 (int const*,size_t,int *,size_t,size_t*) ;

int nt_password_hash(const u8 *password, size_t password_len,
        u8 *password_hash)
{
 u8 buf[512], *pos;
 size_t len, max_len;

 max_len = sizeof(buf);
 if (utf8_to_ucs2(password, password_len, buf, max_len, &len) < 0)
  return -1;

 len *= 2;
 pos = buf;
 return md4_vector(1, (const u8 **) &pos, &len, password_hash);
}
