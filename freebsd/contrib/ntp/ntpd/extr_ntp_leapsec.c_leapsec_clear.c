
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int head; int lsig; } ;
typedef TYPE_1__ leap_table_t ;


 int memset (int *,int ,int) ;
 int reset_times (TYPE_1__*) ;

void
leapsec_clear(
 leap_table_t * pt)
{
 memset(&pt->lsig, 0, sizeof(pt->lsig));
 memset(&pt->head, 0, sizeof(pt->head));
 reset_times(pt);
}
