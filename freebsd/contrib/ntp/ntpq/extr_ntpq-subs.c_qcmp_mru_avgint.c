
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {double count; int last; int first; } ;
typedef TYPE_1__ mru ;
typedef int l_fp ;


 int LFPTOD (int *,double) ;
 scalar_t__ L_ISEQU (int *,int *) ;
 scalar_t__ L_ISGEQ (int *,int *) ;
 int L_SUB (int *,int *) ;

__attribute__((used)) static int
qcmp_mru_avgint(
 const void *v1,
 const void *v2
 )
{
 const mru * const * ppm1 = v1;
 const mru * const * ppm2 = v2;
 const mru * pm1;
 const mru * pm2;
 l_fp interval;
 double avg1;
 double avg2;

 pm1 = *ppm1;
 pm2 = *ppm2;

 interval = pm1->last;
 L_SUB(&interval, &pm1->first);
 LFPTOD(&interval, avg1);
 avg1 /= pm1->count;

 interval = pm2->last;
 L_SUB(&interval, &pm2->first);
 LFPTOD(&interval, avg2);
 avg2 /= pm2->count;

 if (avg1 < avg2)
  return -1;
 else if (avg1 > avg2)
  return 1;


 if (L_ISEQU(&pm1->last, &pm2->last))
  return 0;
 else if (L_ISGEQ(&pm1->last, &pm2->last))
  return -1;
 else
  return 1;
}
