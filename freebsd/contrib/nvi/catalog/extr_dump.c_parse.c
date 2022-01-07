
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 int MOVEC (char) ;
 int TESTD (int) ;
 int TESTP ;
 int getc (int *) ;
 int putchar (char) ;

__attribute__((used)) static void
parse(FILE *fp)
{
 int ch, s1, s2, s3;
 for (;;) {
  { do { if ((ch = getc(fp)) == EOF) return; } while (ch != ('"')); };
  { if ((s1 = getc(fp)) == EOF) return; if (!isdigit(s1)) continue; };
  { if ((s2 = getc(fp)) == EOF) return; if (!isdigit(s2)) continue; };
  { if ((s3 = getc(fp)) == EOF) return; if (!isdigit(s3)) continue; };
  { if ((ch = getc(fp)) == EOF) return; if (ch != '|') continue; };
  putchar('"');
  putchar(s1);
  putchar(s2);
  putchar(s3);
  putchar('|');
  for (;;) {
   if ((ch = getc(fp)) == EOF)
    return;
   putchar(ch);
   if (ch == '"')
    break;
   if (ch == '\\') {
    if ((ch = getc(fp)) == EOF)
     return;
    putchar(ch);
   }
  }
  putchar('\n');
 }
}
