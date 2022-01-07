
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef char uschar ;
struct TYPE_7__ {char* sval; int tval; int fval; } ;
struct TYPE_6__ {int fval; } ;


 scalar_t__* ARGC ;
 int DONTFREE ;
 int FATAL (char*,char*) ;
 char** FILENAME ;
 int * FS ;
 int NUM ;
 int REC ;
 int * RS ;
 int STR ;
 scalar_t__ argno ;
 int atof (char*) ;
 scalar_t__ donefld ;
 int donerec ;
 int dprintf (char*) ;
 int fclose (int *) ;
 char* file ;
 scalar_t__ firsttime ;
 TYPE_3__** fldtab ;
 TYPE_1__* fnrloc ;
 int * fopen (char*,char*) ;
 scalar_t__ freeable (TYPE_3__*) ;
 char* getargv (scalar_t__) ;
 int * infile ;
 int initgetrec () ;
 scalar_t__ is_number (char*) ;
 scalar_t__ isclvar (char*) ;
 TYPE_1__* nrloc ;
 int readrec (char**,int*,int *) ;
 int setclvar (char*) ;
 int setfval (TYPE_1__*,int) ;
 int * stdin ;
 int xfree (char*) ;

int getrec(char **pbuf, int *pbufsize, int isrecord)
{
 int c;
 char *buf = *pbuf;
 uschar saveb0;
 int bufsize = *pbufsize, savebufsize = bufsize;

 if (firsttime) {
  firsttime = 0;
  initgetrec();
 }
    dprintf( ("RS=<%s>, FS=<%s>, ARGC=%g, FILENAME=%s\n",
  *RS, *FS, *ARGC, *FILENAME) );
 if (isrecord) {
  donefld = 0;
  donerec = 1;
 }
 saveb0 = buf[0];
 buf[0] = 0;
 while (argno < *ARGC || infile == stdin) {
     dprintf( ("argno=%d, file=|%s|\n", argno, file) );
  if (infile == ((void*)0)) {
   file = getargv(argno);
   if (file == ((void*)0) || *file == '\0') {
    argno++;
    continue;
   }
   if (isclvar(file)) {
    setclvar(file);
    argno++;
    continue;
   }
   *FILENAME = file;
      dprintf( ("opening file %s\n", file) );
   if (*file == '-' && *(file+1) == '\0')
    infile = stdin;
   else if ((infile = fopen(file, "r")) == ((void*)0))
    FATAL("can't open file %s", file);
   setfval(fnrloc, 0.0);
  }
  c = readrec(&buf, &bufsize, infile);
  if (c != 0 || buf[0] != '\0') {
   if (isrecord) {
    if (freeable(fldtab[0]))
     xfree(fldtab[0]->sval);
    fldtab[0]->sval = buf;
    fldtab[0]->tval = REC | STR | DONTFREE;
    if (is_number(fldtab[0]->sval)) {
     fldtab[0]->fval = atof(fldtab[0]->sval);
     fldtab[0]->tval |= NUM;
    }
   }
   setfval(nrloc, nrloc->fval+1);
   setfval(fnrloc, fnrloc->fval+1);
   *pbuf = buf;
   *pbufsize = bufsize;
   return 1;
  }

  if (infile != stdin)
   fclose(infile);
  infile = ((void*)0);
  argno++;
 }
 buf[0] = saveb0;
 *pbuf = buf;
 *pbufsize = savebufsize;
 return 0;
}
