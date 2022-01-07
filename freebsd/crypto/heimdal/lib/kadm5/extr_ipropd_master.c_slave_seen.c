
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int seen; int flags; } ;
typedef TYPE_1__ slave ;


 int SLAVE_F_AYT ;
 int time (int *) ;

__attribute__((used)) static void
slave_seen(slave *s)
{
    s->flags &= ~SLAVE_F_AYT;
    s->seen = time(((void*)0));
}
