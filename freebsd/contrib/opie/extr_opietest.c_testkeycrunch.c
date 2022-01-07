
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opie_otpkey {int dummy; } ;


 scalar_t__ memcmp (struct opie_otpkey*,unsigned char*,int) ;
 scalar_t__ opiekeycrunch (int,struct opie_otpkey*,char*,char*) ;

int testkeycrunch()
{
  static char testin1[] = "ke1234";
  static char testin2[] = "this is a test";
  static unsigned char testout[sizeof(struct opie_otpkey)] = { 0x2e, 0xd3, 0x5d, 0x74, 0x3e, 0xa9, 0xe9, 0xe8 };
  struct opie_otpkey opie_otpkey;

  if (opiekeycrunch(5, &opie_otpkey, testin1, testin2))
    return -1;

  if (memcmp(&opie_otpkey, testout, sizeof(struct opie_otpkey)))
    return -1;

  return 0;
}
