
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ opened; int handle; } ;


 TYPE_1__* stor_info ;
 int stor_info_no ;
 int ub_dev_close (int ) ;

__attribute__((used)) static void
stor_cleanup(void)
{
 int i;

 for (i = 0; i < stor_info_no; i++)
  if (stor_info[i].opened > 0)
   ub_dev_close(stor_info[i].handle);
}
