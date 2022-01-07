
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ippeerlimit; } ;


 int LINK_SLIST (int ,TYPE_1__*,int ) ;
 int link ;
 TYPE_1__ restrict_def4 ;
 TYPE_1__ restrict_def6 ;
 int restrictcount ;
 int restrictlist4 ;
 int restrictlist6 ;

void
init_restrict(void)
{
 restrict_def4.ippeerlimit = -1;
 restrict_def6.ippeerlimit = -1;

 LINK_SLIST(restrictlist4, &restrict_def4, link);
 LINK_SLIST(restrictlist6, &restrict_def6, link);
 restrictcount = 2;
}
