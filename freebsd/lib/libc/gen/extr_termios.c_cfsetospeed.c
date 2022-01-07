
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termios {int c_ospeed; } ;
typedef int speed_t ;



int
cfsetospeed(struct termios *t, speed_t speed)
{

 t->c_ospeed = speed;
 return (0);
}
