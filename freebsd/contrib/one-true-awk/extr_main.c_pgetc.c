
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 int FATAL (char*,int ) ;
 size_t curpfile ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 int getc (int *) ;
 int lineno ;
 size_t npfile ;
 int * pfile ;
 int * stdin ;
 scalar_t__ strcmp (int ,char*) ;
 int * yyin ;

int pgetc(void)
{
 int c;

 for (;;) {
  if (yyin == ((void*)0)) {
   if (curpfile >= npfile)
    return EOF;
   if (strcmp(pfile[curpfile], "-") == 0)
    yyin = stdin;
   else if ((yyin = fopen(pfile[curpfile], "r")) == ((void*)0))
    FATAL("can't open file %s", pfile[curpfile]);
   lineno = 1;
  }
  if ((c = getc(yyin)) != EOF)
   return c;
  if (yyin != stdin)
   fclose(yyin);
  yyin = ((void*)0);
  curpfile++;
 }
}
