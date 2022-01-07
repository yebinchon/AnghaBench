
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* comment ;
 int fesetround (int const) ;
 int fprintf (int ,char*,int const) ;
 int printf (char*,char*,int,long double,long double,char*) ;
 int stderr ;
 int testall_r (long double,long double) ;

__attribute__((used)) static void
testall(int testnum, long double big, long double small)
{
 static const int rmodes[] = {
  130, 128, 131, 129
 };
 int i;

 for (i = 0; i < 4; i++) {
  fesetround(rmodes[i]);
  if (!testall_r(big, small)) {
   fprintf(stderr, "FAILURE in rounding mode %d\n",
    rmodes[i]);
   break;
  }
 }
 printf("%sok %d - big = %.20Lg, small = %.20Lg%s\n",
        (i == 4) ? "" : "not ", testnum, big, small,
        comment == ((void*)0) ? "" : comment);
}
