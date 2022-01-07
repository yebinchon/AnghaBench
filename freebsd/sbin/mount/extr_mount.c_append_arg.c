
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpa {int c; int sz; char** a; } ;


 int errx (int,char*) ;
 char** realloc (char**,int) ;

__attribute__((used)) static void
append_arg(struct cpa *sa, char *arg)
{
 if (sa->c + 1 == sa->sz) {
  sa->sz = sa->sz == 0 ? 8 : sa->sz * 2;
  sa->a = realloc(sa->a, sizeof(*sa->a) * sa->sz);
  if (sa->a == ((void*)0))
   errx(1, "realloc failed");
 }
 sa->a[++sa->c] = arg;
}
