
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ Debug ;
 int FALSE ;
 int TRUE ;
 int printf (char*,int,...) ;

int
ConvertMonthDayToDayOfYear (int YearValue, int MonthValue, int DayOfMonthValue)
 {
 int ReturnValue;
 int LeapYear;
 int MonthCounter;



 int DaysInMonth[] = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};


 LeapYear = FALSE;
 if ((YearValue % 4) == 0)
  {
  if ((YearValue % 100) == 0)
   {
   if ((YearValue % 400) == 0)
    {
    LeapYear = TRUE;
    }
   }
  else
   {
   LeapYear = TRUE;
   }
  }

 if (Debug)
  printf ("\nConvertMonthDayToDayOfYear(): Year %d %s a leap year.\n", YearValue+2000, LeapYear ? "is" : "is not");


 ReturnValue = DayOfMonthValue;


 for (MonthCounter=1; MonthCounter<MonthValue; MonthCounter++)
  {
  ReturnValue += DaysInMonth [ MonthCounter - 1 ];
  }


 if ((LeapYear) && (MonthValue > 2))
  {
  ReturnValue++;
  }

 if (Debug)
  printf ("\nConvertMonthDayToDayOfYear(): %4.4d-%2.2d-%2.2d represents day %3d of year.\n",
    YearValue+2000, MonthValue, DayOfMonthValue, ReturnValue);

 return (ReturnValue);
 }
