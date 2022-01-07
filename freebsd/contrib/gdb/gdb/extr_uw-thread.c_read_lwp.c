
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int __lwp_desc_t ;
struct TYPE_3__ {int (* to_xfer_memory ) (int ,char*,int,int ,int *,TYPE_1__*) ;} ;
typedef int CORE_ADDR ;


 TYPE_1__ base_ops ;
 int stub1 (int ,char*,int,int ,int *,TYPE_1__*) ;

__attribute__((used)) static int
read_lwp (CORE_ADDR lwpp, __lwp_desc_t *lwp)
{
  return base_ops.to_xfer_memory (lwpp, (char *)lwp,
      sizeof (*lwp), 0, ((void*)0), &base_ops);
}
