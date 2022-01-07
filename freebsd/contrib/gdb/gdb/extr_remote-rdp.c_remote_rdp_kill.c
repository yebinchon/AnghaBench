
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* shutdown ) (TYPE_1__*) ;} ;


 TYPE_1__* callback ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static void
remote_rdp_kill (void)
{
  callback->shutdown (callback);
}
