
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wn; scalar_t__ tick; scalar_t__ sec; } ;
typedef TYPE_1__ T_GPS ;


 long SECSPERDAY ;
 int snprintf (char*,int,char*,int,long,long,long) ;
 int strlen (char*) ;

void
mbg_tgps_str(
 char **buffpp,
 T_GPS *tgpsp,
 int size
 )
{
 snprintf(*buffpp, size, "week %d + %ld days + %ld.%07ld sec",
   tgpsp->wn, (long) tgpsp->sec / SECSPERDAY,
   (long) tgpsp->sec % SECSPERDAY, (long) tgpsp->tick);
 *buffpp += strlen(*buffpp);
}
