
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fail ;
 int fprintf (int ,char*,...) ;
 int stderr ;
 long long strtonum (char const*,long long,long long,char const**) ;

void
test(const char *p, long long lb, long long ub, int ok)
{
 long long val;
 const char *q;

 val = strtonum(p, lb, ub, &q);
 if (ok && q != ((void*)0)) {
  fprintf(stderr, "%s [%lld-%lld] ", p, lb, ub);
  fprintf(stderr, "NUMBER NOT ACCEPTED %s\n", q);
  fail = 1;
 } else if (!ok && q == ((void*)0)) {
  fprintf(stderr, "%s [%lld-%lld] %lld ", p, lb, ub, val);
  fprintf(stderr, "NUMBER ACCEPTED\n");
  fail = 1;
 }
}
