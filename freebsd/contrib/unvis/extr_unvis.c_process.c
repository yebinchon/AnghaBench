
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 int UNVIS_END ;




 int errx (int,char*,int) ;
 int getc (int *) ;
 int putchar (char) ;
 int const unvis (char*,char,int*,int) ;
 int warnx (char*,char const*,int) ;

__attribute__((used)) static void
process(FILE *fp, const char *filename, int eflags)
{
 int offset = 0, c, ret;
 int state = 0;
 char outc;

 while ((c = getc(fp)) != EOF) {
  offset++;
 again:
  switch(ret = unvis(&outc, (char)c, &state, eflags)) {
  case 129:
   (void)putchar(outc);
   break;
  case 128:
   (void)putchar(outc);
   goto again;
  case 130:
   warnx("%s: offset: %d: can't decode", filename, offset);
   state = 0;
   break;
  case 0:
  case 131:
   break;
  default:
   errx(1, "bad return value (%d), can't happen", ret);

  }
 }
 if (unvis(&outc, (char)0, &state, eflags | UNVIS_END) == 129)
  (void)putchar(outc);
}
