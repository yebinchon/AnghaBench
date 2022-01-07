
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct target_ops {int dummy; } ;
struct mem_attrib {int dummy; } ;
struct TYPE_4__ {int (* to_xfer_memory ) (int ,char*,int,int,struct mem_attrib*,struct target_ops*) ;} ;
struct TYPE_3__ {int (* to_xfer_memory ) (int ,char*,int,int,struct mem_attrib*,struct target_ops*) ;} ;
typedef int CORE_ADDR ;


 TYPE_2__ child_ops ;
 TYPE_1__ orig_core_ops ;
 int stub1 (int ,char*,int,int,struct mem_attrib*,struct target_ops*) ;
 int stub2 (int ,char*,int,int,struct mem_attrib*,struct target_ops*) ;
 scalar_t__ target_has_execution ;

__attribute__((used)) static int
fbsd_thread_xfer_memory (CORE_ADDR memaddr, char *myaddr, int len, int write,
                        struct mem_attrib *attrib, struct target_ops *target)
{
  int err;

  if (target_has_execution)
    err = child_ops.to_xfer_memory (memaddr, myaddr, len, write, attrib,
 target);
  else
    err = orig_core_ops.to_xfer_memory (memaddr, myaddr, len, write, attrib,
 target);

  return (err);
}
