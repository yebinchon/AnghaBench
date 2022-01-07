
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;
typedef int FILE ;
typedef int Cell ;


 int FATAL (char*,char*) ;
 int * execute (int *) ;
 char* getsval (int *) ;
 int * openfile (int,char*) ;
 int tempfree (int *) ;

FILE *redirect(int a, Node *b)
{
 FILE *fp;
 Cell *x;
 char *fname;

 x = execute(b);
 fname = getsval(x);
 fp = openfile(a, fname);
 if (fp == ((void*)0))
  FATAL("can't open file %s", fname);
 tempfree(x);
 return fp;
}
