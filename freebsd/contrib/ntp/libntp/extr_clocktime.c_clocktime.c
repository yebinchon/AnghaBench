
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int32 ;
typedef int int32 ;


 int CLOSETIME ;
 int HRSPERDAY ;
 int MINSPERHR ;
 int NEARTIME ;
 int SECSPERMIN ;
 int ntp_to_year (int) ;
 int year_to_ntp (int) ;

int
clocktime(
 int yday ,
 int hour ,
 int minute ,
 int second ,
 int tzoff ,
 u_int32 rec_ui ,
 u_long *yearstart,
 u_int32 *ts_ui )
{
 u_int32 ystt[3];
 u_int32 test[3];
 u_int32 diff[3];
 int32 y, tmp, idx, min;





 tmp = ((int32)second +
        SECSPERMIN * ((int32)minute +
        MINSPERHR * ((int32)hour + (int32)tzoff +
       HRSPERDAY * ((int32)yday - 1))));







 if (*yearstart) {

  test[0] = (u_int32)(*yearstart) + tmp;

  diff[0] = test[0] - rec_ui;
  if (diff[0] >= 0x80000000u)
   diff[0] = ~diff[0] + 1;

  if (diff[0] < NEARTIME) {
   *ts_ui = test[0];
   return diff[0] < CLOSETIME;
  }
 }
 y = ntp_to_year(rec_ui - tmp);
 for (idx = 0; idx < 3; idx++) {

  ystt[idx] = year_to_ntp(y + idx - 1);

  test[idx] = ystt[idx] + tmp;

  diff[idx] = test[idx] - rec_ui;
  if (diff[idx] >= 0x80000000u)
   diff[idx] = ~diff[idx] + 1;
 }

 for (min = 1, idx = 0; idx < 3; idx++)
  if (diff[idx] < diff[min])
   min = idx;

 *ts_ui = test[min];
 *yearstart = ystt[min];


 return diff[min] < CLOSETIME;
}
