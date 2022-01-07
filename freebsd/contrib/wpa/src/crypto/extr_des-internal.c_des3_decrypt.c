
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct des3_key_s {int * dk; } ;


 int WPA_GET_BE32 (int const*) ;
 int WPA_PUT_BE32 (int *,int ) ;
 int desfunc (int *,int ) ;

void des3_decrypt(const u8 *crypt, const struct des3_key_s *key, u8 *plain)
{
 u32 work[2];

 work[0] = WPA_GET_BE32(crypt);
 work[1] = WPA_GET_BE32(crypt + 4);
 desfunc(work, key->dk[0]);
 desfunc(work, key->dk[1]);
 desfunc(work, key->dk[2]);
 WPA_PUT_BE32(plain, work[0]);
 WPA_PUT_BE32(plain + 4, work[1]);
}
