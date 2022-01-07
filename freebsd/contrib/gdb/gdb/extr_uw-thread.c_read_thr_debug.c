
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct thread_debug {int dummy; } ;
struct TYPE_3__ {int (* to_xfer_memory ) (int ,char*,int,int ,int *,TYPE_1__*) ;} ;


 TYPE_1__ base_ops ;
 int stub1 (int ,char*,int,int ,int *,TYPE_1__*) ;
 int thr_debug_addr ;

__attribute__((used)) static int
read_thr_debug (struct thread_debug *debugp)
{
  return base_ops.to_xfer_memory (thr_debug_addr, (char *)debugp,
      sizeof (*debugp), 0, ((void*)0), &base_ops);
}
