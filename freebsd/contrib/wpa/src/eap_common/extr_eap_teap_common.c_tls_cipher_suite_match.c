
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ const u16 ;



__attribute__((used)) static int tls_cipher_suite_match(const u16 *list, size_t count, u16 cs)
{
 size_t i;

 for (i = 0; i < count; i++) {
  if (list[i] == cs)
   return 1;
 }

 return 0;
}
