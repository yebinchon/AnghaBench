
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;


 int old_salt ;
 int saltbits ;

__attribute__((used)) static void
setup_salt(u_int32_t salt)
{
 u_int32_t obit, saltbit;
 int i;

 if (salt == old_salt)
  return;
 old_salt = salt;

 saltbits = 0L;
 saltbit = 1;
 obit = 0x800000;
 for (i = 0; i < 24; i++) {
  if (salt & saltbit)
   saltbits |= obit;
  saltbit <<= 1;
  obit >>= 1;
 }
}
