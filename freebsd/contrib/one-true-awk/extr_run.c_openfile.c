
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct files {char* fname; int mode; int * fp; } ;
typedef int FILE ;


 int APPEND ;
 int FATAL (char*,...) ;
 int FFLUSH ;
 int FOPEN_MAX ;
 int GT ;
 int LE ;
 int LT ;
 int fflush (int ) ;
 struct files* files ;
 int * fopen (char const*,char*) ;
 int memset (struct files*,int ,int) ;
 int nfiles ;
 int * popen (char const*,char*) ;
 struct files* realloc (struct files*,int) ;
 int * stdin ;
 int stdout ;
 scalar_t__ strcmp (char const*,char*) ;
 char* tostring (char const*) ;

FILE *openfile(int a, const char *us)
{
 const char *s = us;
 int i, m;
 FILE *fp = ((void*)0);

 if (*s == '\0')
  FATAL("null file name in print or getline");
 for (i=0; i < nfiles; i++)
  if (files[i].fname && strcmp(s, files[i].fname) == 0) {
   if (a == files[i].mode || (a==APPEND && files[i].mode==GT))
    return files[i].fp;
   if (a == FFLUSH)
    return files[i].fp;
  }
 if (a == FFLUSH)
  return ((void*)0);

 for (i=0; i < nfiles; i++)
  if (files[i].fp == ((void*)0))
   break;
 if (i >= nfiles) {
  struct files *nf;
  int nnf = nfiles + FOPEN_MAX;
  nf = realloc(files, nnf * sizeof(*nf));
  if (nf == ((void*)0))
   FATAL("cannot grow files for %s and %d files", s, nnf);
  memset(&nf[nfiles], 0, FOPEN_MAX * sizeof(*nf));
  nfiles = nnf;
  files = nf;
 }
 fflush(stdout);
 m = a;
 if (a == GT) {
  fp = fopen(s, "w");
 } else if (a == APPEND) {
  fp = fopen(s, "a");
  m = GT;
 } else if (a == '|') {
  fp = popen(s, "w");
 } else if (a == LE) {
  fp = popen(s, "r");
 } else if (a == LT) {
  fp = strcmp(s, "-") == 0 ? stdin : fopen(s, "r");
 } else
  FATAL("illegal redirection %d", a);
 if (fp != ((void*)0)) {
  files[i].fname = tostring(s);
  files[i].fp = fp;
  files[i].mode = m;
 }
 return fp;
}
