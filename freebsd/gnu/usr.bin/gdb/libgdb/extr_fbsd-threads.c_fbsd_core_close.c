
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* to_close ) (int) ;} ;


 TYPE_1__ orig_core_ops ;
 int stub1 (int) ;

__attribute__((used)) static void
fbsd_core_close (int quitting)
{
  orig_core_ops.to_close (quitting);
}
