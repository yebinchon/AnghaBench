
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 int bclass (int) ;
 int compile_time ;
 int fprintf (int ,char*) ;
 int input () ;
 int putc (char,int ) ;
 int stderr ;

void eprint(void)
{
 char *p, *q;
 int c;
 static int been_here = 0;
 extern char ebuf[], *ep;

 if (compile_time == 2 || compile_time == 0 || been_here++ > 0 || ebuf == ep)
  return;
 if (ebuf == ep)
  return;
 p = ep - 1;
 if (p > ebuf && *p == '\n')
  p--;
 for ( ; p > ebuf && *p != '\n' && *p != '\0'; p--)
  ;
 while (*p == '\n')
  p++;
 fprintf(stderr, " context is\n\t");
 for (q=ep-1; q>=p && *q!=' ' && *q!='\t' && *q!='\n'; q--)
  ;
 for ( ; p < q; p++)
  if (*p)
   putc(*p, stderr);
 fprintf(stderr, " >>> ");
 for ( ; p < ep; p++)
  if (*p)
   putc(*p, stderr);
 fprintf(stderr, " <<< ");
 if (*ep)
  while ((c = input()) != '\n' && c != '\0' && c != EOF) {
   putc(c, stderr);
   bclass(c);
  }
 putc('\n', stderr);
 ep = ebuf;
}
