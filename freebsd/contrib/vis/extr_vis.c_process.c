
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wint_t ;
typedef int mbibuff ;
typedef int FILE ;


 scalar_t__ EILSEQ ;
 int MB_LEN_MAX ;
 int VIS_MIMESTYLE ;
 int VIS_NOSLASH ;
 char WEOF ;
 scalar_t__ debug ;
 int eflags ;
 scalar_t__ errno ;
 int extra ;
 scalar_t__ fold ;
 int foldit (char*,int,int ,int) ;
 int foldwidth ;
 scalar_t__ getc (int *) ;
 char getwc (int *) ;
 scalar_t__ markeol ;
 int memset (char*,int ,int) ;
 scalar_t__ none ;
 int printf (char*,...) ;
 int putchar (char) ;
 int strsenvisx (char*,int,char*,int,int,int ,int*) ;
 int wctomb (char*,char) ;

__attribute__((used)) static void
process(FILE *fp)
{
 static int col = 0;
 static char nul[] = "\0";
 char *cp = nul + 1;
 wint_t c, c1, rachar;
 char mbibuff[2 * MB_LEN_MAX + 1];
 char buff[4 * MB_LEN_MAX + 1];
 int mbilen, cerr = 0, raerr = 0;
 c = getwc(fp);
 if (c == WEOF && errno == EILSEQ) {

  c = (wint_t)getc(fp);
  cerr = 1;
 }
 while (c != WEOF) {

  memset(mbibuff, 0, sizeof(mbibuff));

  if (!cerr)
   rachar = getwc(fp);
  if (cerr || (rachar == WEOF && errno == EILSEQ)) {

   rachar = (wint_t)getc(fp);
   raerr = 1;
  }
  if (none) {

   cp = buff;
   *cp++ = c;
   if (c == '\\')
    *cp++ = '\\';
   *cp = '\0';
  } else if (markeol && c == '\n') {

   cp = buff;
   if ((eflags & VIS_NOSLASH) == 0)
    *cp++ = '\\';
   *cp++ = '$';
   *cp++ = '\n';
   *cp = '\0';
  } else {
   c1 = rachar;
   if (c1 == WEOF)
    c1 = L'\0';






   if (cerr) {
    *mbibuff = (char)c;
    mbilen = 1;
   } else
    mbilen = wctomb(mbibuff, c);

   if (raerr)
    mbibuff[mbilen] = (char)c1;
   else
    wctomb(mbibuff + mbilen, c1);

   (void) strsenvisx(buff, 4 * MB_LEN_MAX, mbibuff,
       1, eflags, extra, &cerr);
  }

  cp = buff;
  if (fold) {




   col = foldit(cp, col, foldwidth, eflags);




  }
  do {
   (void)putchar(*cp);
  } while (*++cp);
  c = rachar;
  cerr = raerr;
 }



 if (fold && *(cp - 1) != '\n')
  (void)printf(eflags & VIS_MIMESTYLE ? "=\n" : "\\\n");
}
