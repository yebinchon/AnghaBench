
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Cell ;
typedef int Array ;


 int STR ;
 int dprintf (char*) ;
 char* getsval (int *) ;
 int * lookup (char*,int *) ;
 int * setsymtab (char*,char*,double,int ,int *) ;
 int sprintf (char*,char*,int) ;

char *getargv(int n)
{
 Cell *x;
 char *s, temp[50];
 extern Array *ARGVtab;

 sprintf(temp, "%d", n);
 if (lookup(temp, ARGVtab) == ((void*)0))
  return ((void*)0);
 x = setsymtab(temp, "", 0.0, STR, ARGVtab);
 s = getsval(x);
    dprintf( ("getargv(%d) returns |%s|\n", n, s) );
 return s;
}
