
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int dummy; } ;
typedef int speed_t ;


 int cfgetispeed (struct termios*) ;
 int cfgetospeed (struct termios*) ;

__attribute__((used)) static speed_t
tty__getspeed(struct termios *td)
{
 speed_t spd;

 if ((spd = cfgetispeed(td)) == 0)
  spd = cfgetospeed(td);
 return spd;
}
