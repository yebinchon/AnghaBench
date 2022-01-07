
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct des3_key_s {int * ek; } ;


 int WPA_GET_BE32 (int const*) ;
 int WPA_PUT_BE32 (int *,int ) ;
 int desfunc (int *,int ) ;

void des3_encrypt(const u8 *plain, const struct des3_key_s *key, u8 *crypt)
{
 u32 work[2];

 work[0] = WPA_GET_BE32(plain);
 work[1] = WPA_GET_BE32(plain + 4);
 desfunc(work, key->ek[0]);
 desfunc(work, key->ek[1]);
 desfunc(work, key->ek[2]);
 WPA_PUT_BE32(crypt, work[0]);
 WPA_PUT_BE32(crypt + 4, work[1]);
}
