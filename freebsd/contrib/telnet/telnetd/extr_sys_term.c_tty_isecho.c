
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sg_flags; } ;
struct TYPE_4__ {int c_lflag; TYPE_1__ sg; } ;


 int ECHO ;
 TYPE_2__ termbuf ;

int
tty_isecho(void)
{

 return (termbuf.sg.sg_flags & ECHO);



}
