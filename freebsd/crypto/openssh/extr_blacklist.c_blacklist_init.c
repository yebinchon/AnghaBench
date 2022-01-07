
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ use_blacklist; } ;


 int bl_create (int,int *,int ) ;
 int blstate ;
 int im_log ;
 TYPE_1__ options ;

void
blacklist_init(void)
{

 if (options.use_blacklist)
  blstate = bl_create(0, ((void*)0), im_log);
}
