
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long* corr ;
 int leapcnt ;
 int tadd (int ,long) ;
 int * trans ;

__attribute__((used)) static void
adjleap(void)
{
 register int i;
 register long last = 0;




 for (i = 0; i < leapcnt; ++i) {
  trans[i] = tadd(trans[i], last);
  last = corr[i] += last;
 }
}
