
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int year; int month; int mday; int hour; int min; int sec; scalar_t__ offs_from_utc; int status; scalar_t__ frac; } ;
typedef TYPE_1__ TM_GPS ;


 int abs (int) ;
 int mbg_time_status_str (char**,int ,int) ;
 int snprintf (char*,int,char*,int,int,int,int,int,int,long,char,int,int) ;
 int strlen (char*) ;

void
mbg_tm_str(
 char **buffpp,
 TM_GPS *tmp,
 int size,
 int print_status
 )
{
 char *s = *buffpp;

 snprintf(*buffpp, size, "%04d-%02d-%02d %02d:%02d:%02d.%07ld (%c%02d%02d) ",
   tmp->year, tmp->month, tmp->mday,
   tmp->hour, tmp->min, tmp->sec, (long) tmp->frac,
   (tmp->offs_from_utc < 0) ? '-' : '+',
   abs((int)tmp->offs_from_utc) / 3600,
   (abs((int)tmp->offs_from_utc) / 60) % 60);
 *buffpp += strlen(*buffpp);

 if (print_status)
  mbg_time_status_str(buffpp, tmp->status, size - (*buffpp - s));
}
