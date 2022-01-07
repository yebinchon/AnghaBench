
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int busy_t ;
struct TYPE_6__ {TYPE_1__* gp; } ;
struct TYPE_5__ {int (* scr_busy ) (TYPE_2__*,char*,int ) ;} ;
typedef TYPE_2__ SCR ;


 int stub1 (TYPE_2__*,char*,int ) ;

void
search_busy(
 SCR *sp,
 busy_t btype)
{
 sp->gp->scr_busy(sp, "078|Searching...", btype);
}
