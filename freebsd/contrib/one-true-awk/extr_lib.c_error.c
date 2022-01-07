
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lineno; } ;
typedef TYPE_1__ Node ;


 char** FILENAME ;
 scalar_t__* FNR ;
 scalar_t__* NR ;
 int compile_time ;
 char* cursource () ;
 int eprint () ;
 int fprintf (int ,char*,...) ;
 int lineno ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;

void error()
{
 extern Node *curnode;

 fprintf(stderr, "\n");
 if (compile_time != 2 && NR && *NR > 0) {
  fprintf(stderr, " input record number %d", (int) (*FNR));
  if (strcmp(*FILENAME, "-") != 0)
   fprintf(stderr, ", file %s", *FILENAME);
  fprintf(stderr, "\n");
 }
 if (compile_time != 2 && curnode)
  fprintf(stderr, " source line number %d", curnode->lineno);
 else if (compile_time != 2 && lineno)
  fprintf(stderr, " source line number %d", lineno);
 if (compile_time == 1 && cursource() != ((void*)0))
  fprintf(stderr, " source file %s", cursource());
 fprintf(stderr, "\n");
 eprint();
}
