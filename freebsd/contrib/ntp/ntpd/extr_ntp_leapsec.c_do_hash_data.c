
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;
typedef int isc_sha1_t ;


 int isc_sha1_update (int *,unsigned char*,unsigned int) ;
 scalar_t__ isdigit (unsigned char) ;

__attribute__((used)) static void
do_hash_data(
 isc_sha1_t * mdctx,
 char const * cp )
{
 unsigned char text[32];
 unsigned int tlen = 0;
 unsigned char ch;

 while ('\0' != (ch = *cp++) && '#' != ch)
  if (isdigit(ch)) {
   text[tlen++] = ch;
   tlen &= (sizeof(text)-1);
   if (0 == tlen)
    isc_sha1_update(
     mdctx, text, sizeof(text));
  }

 if (0 < tlen)
  isc_sha1_update(mdctx, text, tlen);
}
