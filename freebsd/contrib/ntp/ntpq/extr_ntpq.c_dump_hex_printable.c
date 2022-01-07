
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int lbuf ;


 int fputs (char*,int ) ;
 scalar_t__ isprint (int) ;
 int memset (char*,char,int) ;
 int stdout ;

__attribute__((used)) static void
dump_hex_printable(
 const void * data,
 size_t len
 )
{







 static const char s_xdig[16] = "0123456789ABCDEF";

 char lbuf[68];
 int ch, rowlen;
 const u_char * cdata = data;
 char *xptr, *pptr;

 while (len) {
  memset(lbuf, ' ', sizeof(lbuf));
  xptr = lbuf;
  pptr = lbuf + 3*16 + 2;

  rowlen = (len > 16) ? 16 : (int)len;
  len -= rowlen;

  do {
   ch = *cdata++;

   *xptr++ = s_xdig[ch >> 4 ];
   *xptr++ = s_xdig[ch & 0x0F];
   if (++xptr == lbuf + 3*8)
    ++xptr;

   *pptr++ = isprint(ch) ? (char)ch : '.';
  } while (--rowlen);

  *pptr++ = '\n';
  *pptr = '\0';
  fputs(lbuf, stdout);
 }
}
