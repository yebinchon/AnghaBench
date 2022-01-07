
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ldexp_test {double x; int * result; int exp2; int exp1; } ;
typedef int outbuf ;


 int ATF_CHECK_STREQ_MSG (int *,char*,char*,size_t,int *,char*) ;
 char* FORMAT ;
 int SKIP ;
 double ldexp (double,int ) ;
 int snprintf (char*,int,char*,double) ;

__attribute__((used)) static void
run_test(struct ldexp_test *table)
{
 char outbuf[64];
 size_t i;
 double v;

 for (i = 0; table->result != ((void*)0); table++, i++) {

  v = ldexp(table->x, table->exp1);

  if (table->exp2 != SKIP)
   v = ldexp(v, table->exp2);

  (void)snprintf(outbuf, sizeof(outbuf), FORMAT, v);

  ATF_CHECK_STREQ_MSG(table->result, outbuf,
       "Entry %zu:\n\tExp: \"%s\"\n\tAct: \"%s\"",
       i, table->result, outbuf);
 }
}
