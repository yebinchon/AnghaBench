
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* ARGC ;
 int argno ;
 char* getargv (int) ;
 int infile ;
 int isclvar (char*) ;
 int lookup (char*,int ) ;
 int setclvar (char*) ;
 int setsval (int ,char*) ;
 int stdin ;
 int symtab ;

void initgetrec(void)
{
 int i;
 char *p;

 for (i = 1; i < *ARGC; i++) {
  p = getargv(i);
  if (p == ((void*)0) || *p == '\0') {
   argno++;
   continue;
  }
  if (!isclvar(p)) {
   setsval(lookup("FILENAME", symtab), p);
   return;
  }
  setclvar(p);
  argno++;
 }
 infile = stdin;
}
