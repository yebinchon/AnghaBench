
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int archive_le16enc (char*,int) ;

__attribute__((used)) static size_t
unicode_to_utf16le(char *p, size_t remaining, uint32_t uc)
{
 char *utf16 = p;

 if (uc > 0xffff) {


  if (remaining < 4)
   return (0);
  uc -= 0x10000;
  archive_le16enc(utf16, ((uc >> 10) & 0x3ff) + 0xD800);
  archive_le16enc(utf16+2, (uc & 0x3ff) + 0xDC00);
  return (4);
 } else {
  if (remaining < 2)
   return (0);
  archive_le16enc(utf16, uc);
  return (2);
 }
}
