
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int status; void* offs_from_utc; void* frac; int sec; int min; int hour; int wday; void* yday; int mday; int month; void* year; } ;
typedef TYPE_1__ TM_GPS ;


 void* get_lsb_int16 (unsigned char**) ;
 void* get_lsb_long (unsigned char**) ;
 int get_lsb_uint16 (unsigned char**) ;

void
get_mbg_tm(
 unsigned char **buffpp,
 TM_GPS *tmp
 )
{
  tmp->year = get_lsb_int16(buffpp);
  tmp->month = *(*buffpp)++;
  tmp->mday = *(*buffpp)++;
  tmp->yday = get_lsb_int16(buffpp);
  tmp->wday = *(*buffpp)++;
  tmp->hour = *(*buffpp)++;
  tmp->min = *(*buffpp)++;
  tmp->sec = *(*buffpp)++;
  tmp->frac = get_lsb_long(buffpp);
  tmp->offs_from_utc = get_lsb_long(buffpp);
  tmp->status = get_lsb_uint16(buffpp);
}
