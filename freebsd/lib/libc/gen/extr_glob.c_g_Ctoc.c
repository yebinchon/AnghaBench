
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbstate_t ;
typedef int mbs ;
typedef int Char ;


 scalar_t__ CHAR (int const) ;
 scalar_t__ EOS ;
 size_t MB_CUR_MAX ;
 int memset (int *,int ,int) ;
 size_t wcrtomb (char*,scalar_t__,int *) ;

__attribute__((used)) static int
g_Ctoc(const Char *str, char *buf, size_t len)
{
 mbstate_t mbs;
 size_t clen;

 memset(&mbs, 0, sizeof(mbs));
 while (len >= MB_CUR_MAX) {
  clen = wcrtomb(buf, CHAR(*str), &mbs);
  if (clen == (size_t)-1) {

   *buf = (char)CHAR(*str);
   clen = 1;
   memset(&mbs, 0, sizeof(mbs));
  }
  if (CHAR(*str) == EOS)
   return (0);
  str++;
  buf += clen;
  len -= clen;
 }
 return (1);
}
