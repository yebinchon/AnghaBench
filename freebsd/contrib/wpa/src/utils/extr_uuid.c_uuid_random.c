
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int t ;
struct os_time {int dummy; } ;


 int SHA256_MAC_LEN ;
 int UUID_LEN ;
 scalar_t__ hmac_sha256 (int*,int ,int const*,int,int*) ;
 scalar_t__ os_get_random (int*,int ) ;
 int os_get_time (struct os_time*) ;
 int os_memcpy (int*,int*,int ) ;

int uuid_random(u8 *uuid)
{
 struct os_time t;
 u8 hash[SHA256_MAC_LEN];



 os_get_time(&t);
 if (os_get_random(uuid, UUID_LEN) < 0 ||
     hmac_sha256(uuid, UUID_LEN, (const u8 *) &t, sizeof(t), hash) < 0)
  return -1;

 os_memcpy(uuid, hash, UUID_LEN);


 uuid[6] = (4 << 4) | (uuid[6] & 0x0f);


 uuid[8] = 0x80 | (uuid[8] & 0x3f);

 return 0;
}
