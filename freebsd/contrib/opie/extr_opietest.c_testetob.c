
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int testout ;
struct opie_otpkey {int dummy; } ;


 scalar_t__ memcmp (struct opie_otpkey*,unsigned char*,int) ;
 int opieetob (struct opie_otpkey*,char*) ;

int testetob()
{
  static char testin[] = "AIM HEW BLUM FED MITE WARM";
  static unsigned char testout[sizeof(struct opie_otpkey)] = { 0x01, 0x23, 0x45, 0x67, 0x89, 0xab, 0xcd, 0xef };
  struct opie_otpkey key;

  if (opieetob(&key, testin) != 1)
    return -1;

  if (memcmp(&key, testout, sizeof(testout)))
    return -1;

  return 0;
}
