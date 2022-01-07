
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* to_open ) (char*,int) ;} ;


 TYPE_1__ orig_core_ops ;
 int stub1 (char*,int) ;

__attribute__((used)) static void
sol_core_open (char *filename, int from_tty)
{
  orig_core_ops.to_open (filename, from_tty);
}
