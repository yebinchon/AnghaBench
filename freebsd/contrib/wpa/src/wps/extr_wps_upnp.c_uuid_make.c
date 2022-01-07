
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int UUID_LEN ;
 scalar_t__ os_get_random (int*,int ) ;

__attribute__((used)) static int uuid_make(u8 uuid[UUID_LEN])
{
 if (os_get_random(uuid, UUID_LEN) < 0)
  return -1;


 uuid[6] &= 0x0f; uuid[6] |= (4 << 4);
 uuid[8] &= 0x3f; uuid[8] |= 0x80;

 return 0;
}
