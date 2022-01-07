
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HIGH ;
 int LOW ;
 int OFF ;
 int peep (int,int,int ) ;
 int tone ;

void sec(
 int code
 )
{
 peep(5, tone, HIGH);
 peep(25, tone, OFF);
 peep(code - 30, 100, LOW);
 peep(1000 - code, 100, OFF);
}
