
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int c_ispeed; } ;
typedef int speed_t ;



speed_t
cfgetispeed(const struct termios *t)
{

 return (t->c_ispeed);
}
