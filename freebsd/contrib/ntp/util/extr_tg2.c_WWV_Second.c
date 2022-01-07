
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ Debug ;
 int HIGH ;
 int LOW ;
 int OFF ;
 int TotalCyclesAdded ;
 int TotalCyclesRemoved ;
 int peep (int,int,int ) ;
 int printf (char*) ;
 int tone ;

void WWV_Second(
 int code,
 int Rate
 )
{
 peep(5, tone, HIGH);
 peep(25, tone, OFF);
 peep(code - 30, 100, LOW);


 if (Rate < 0)
  {
  peep( 990 - code, 100, OFF);

  TotalCyclesRemoved += 10;

  if (Debug)
   printf ("\n* Shorter Second: ");
  }
 else
  {
  if (Rate > 0)
   {
   peep(1010 - code, 100, OFF);

   TotalCyclesAdded += 10;

   if (Debug)
    printf ("\n* Longer Second: ");
   }
  else
   peep(1000 - code, 100, OFF);
  }
}
