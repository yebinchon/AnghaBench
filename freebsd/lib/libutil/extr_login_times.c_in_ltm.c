
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_short ;
typedef int u_char ;
typedef int time_t ;
struct tm {int tm_wday; int tm_hour; int tm_min; int tm_sec; } ;
struct TYPE_3__ {int lt_dow; scalar_t__ lt_start; scalar_t__ lt_end; } ;
typedef TYPE_1__ login_time_t ;


 int mktime (struct tm*) ;

int
in_ltm(const login_time_t *ltm, struct tm *tt, time_t *ends)
{
    int rc = 0;

    if (tt != ((void*)0)) {

 if ((u_char)(0x01 << tt->tm_wday) & ltm->lt_dow) {

     u_short now = (u_short)((tt->tm_hour * 60) + tt->tm_min);

     if (tt->tm_sec > 30)
  ++now;
     if (now >= ltm->lt_start && now < ltm->lt_end) {
  rc = 2;
  if (ends != ((void*)0)) {

      tt->tm_hour = (int)(ltm->lt_end / 60);
      tt->tm_min = (int)(ltm->lt_end % 60);
      *ends = mktime(tt);
  }
     }
 }
    }
    return (rc);
}
