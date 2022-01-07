
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int minute; int hour; int day; int month; int year; int wday; int utcoffset; int flags; scalar_t__ second; scalar_t__ usecond; } ;
typedef TYPE_1__ clocktime_t ;


 unsigned long CVT_BADFMT ;
 unsigned long CVT_FAIL ;
 unsigned long CVT_NONE ;
 unsigned long CVT_OK ;
 int DCFB_ANNOUNCE ;
 int DCFB_CALLBIT ;
 int DCFB_DST ;
 int DCFB_LEAP ;
 int DCF_A1 ;
 int DCF_A2 ;
 int DCF_D1 ;
 int DCF_D10 ;
 int DCF_DW ;
 int DCF_H1 ;
 int DCF_H10 ;
 int DCF_M1 ;
 int DCF_M10 ;
 int DCF_MO ;
 int DCF_MO0 ;
 int DCF_P_P1 ;
 int DCF_P_P2 ;
 int DCF_P_P3 ;
 int DCF_R ;
 int DCF_S ;
 int DCF_Y1 ;
 int DCF_Y10 ;
 int DCF_Z ;


 int TIMES10 (int) ;
 int ext_bf (unsigned char*,int ) ;
 scalar_t__ pcheck (unsigned char*,int ) ;
 int printf (char*,char*) ;

__attribute__((used)) static unsigned long
convert_rawdcf(
 register unsigned char *buffer,
 register int size,
 register clocktime_t *clock_time
 )
{
 if (size < 57)
 {
  printf("%-30s", "*** INCOMPLETE");
  return CVT_NONE;
 }




 if ((ext_bf(buffer, DCF_S) == 1) &&
     pcheck(buffer, DCF_P_P1) &&
     pcheck(buffer, DCF_P_P2) &&
     pcheck(buffer, DCF_P_P3))
 {




  clock_time->flags = 0;
  clock_time->usecond= 0;
  clock_time->second = 0;
  clock_time->minute = ext_bf(buffer, DCF_M10);
  clock_time->minute = TIMES10(clock_time->minute) + ext_bf(buffer, DCF_M1);
  clock_time->hour = ext_bf(buffer, DCF_H10);
  clock_time->hour = TIMES10(clock_time->hour) + ext_bf(buffer, DCF_H1);
  clock_time->day = ext_bf(buffer, DCF_D10);
  clock_time->day = TIMES10(clock_time->day) + ext_bf(buffer, DCF_D1);
  clock_time->month = ext_bf(buffer, DCF_MO0);
  clock_time->month = TIMES10(clock_time->month) + ext_bf(buffer, DCF_MO);
  clock_time->year = ext_bf(buffer, DCF_Y10);
  clock_time->year = TIMES10(clock_time->year) + ext_bf(buffer, DCF_Y1);
  clock_time->wday = ext_bf(buffer, DCF_DW);

  switch (ext_bf(buffer, DCF_Z))
  {
      case 128:
   clock_time->utcoffset = -60;
   break;

      case 129:
   clock_time->flags |= DCFB_DST;
   clock_time->utcoffset = -120;
   break;

      default:
   printf("%-30s", "*** BAD TIME ZONE");
   return CVT_FAIL|CVT_BADFMT;
  }

  if (ext_bf(buffer, DCF_A1))
      clock_time->flags |= DCFB_ANNOUNCE;

  if (ext_bf(buffer, DCF_A2))
      clock_time->flags |= DCFB_LEAP;

  if (ext_bf(buffer, DCF_R))
      clock_time->flags |= DCFB_CALLBIT;

  return CVT_OK;
 }
 else
 {



  printf("%-30s", "*** BAD FORMAT (invalid/parity)");
  return CVT_FAIL|CVT_BADFMT;
 }
}
