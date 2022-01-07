
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termspeeds {int speed; int value; } ;


 int cfsetospeed (int *,int) ;
 int termbuf ;
 struct termspeeds* termspeeds ;

void
tty_tspeed(int val)
{
 cfsetospeed(&termbuf, val);

}
