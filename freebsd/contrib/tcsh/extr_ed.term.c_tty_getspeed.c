
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int c_cflag; int sg_ispeed; } ;
struct TYPE_5__ {TYPE_3__ d_t; } ;
typedef TYPE_1__ ttydata_t ;
typedef int speed_t ;


 int CBAUD ;
 int cfgetispeed (TYPE_3__*) ;
 int cfgetospeed (TYPE_3__*) ;

speed_t
tty_getspeed(ttydata_t *td)
{
    speed_t spd;
    spd = td->d_t.sg_ispeed;



    return spd;
}
