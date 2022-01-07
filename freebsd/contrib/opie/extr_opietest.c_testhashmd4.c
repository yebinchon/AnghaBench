
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opie_otpkey {int dummy; } ;


 scalar_t__ memcmp (struct opie_otpkey*,unsigned char*,int) ;
 int memcpy (struct opie_otpkey*,unsigned char*,int) ;
 int opiehash (struct opie_otpkey*,int) ;

int testhashmd4()
{
  static unsigned char testin[sizeof(struct opie_otpkey)] = { 0x01, 0x23, 0x45, 0x67, 0x89, 0xab, 0xcd, 0xef };
  static unsigned char testout[sizeof(struct opie_otpkey)] = { 0x9f, 0x40, 0xfb, 0x84, 0xb, 0xf8, 0x7f, 0x4b };
  struct opie_otpkey testin_aligned;

  memcpy(&testin_aligned, testin, sizeof(struct opie_otpkey));

  opiehash(&testin_aligned, 4);

  if (memcmp(&testin_aligned, testout, sizeof(struct opie_otpkey)))
    return -1;

  return 0;
}
