
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ th_tid; scalar_t__ th_thread; } ;
typedef TYPE_1__ td_thrhandle_t ;


 int TD_ERR ;
 int TD_OK ;

__attribute__((used)) static int
pt_validate(const td_thrhandle_t *th)
{

 if (th->th_tid == 0 || th->th_thread == 0)
  return (TD_ERR);
 return (TD_OK);
}
