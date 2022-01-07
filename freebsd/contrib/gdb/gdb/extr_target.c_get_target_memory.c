
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_ops {int dummy; } ;
typedef scalar_t__ LONGEST ;
typedef int CORE_ADDR ;


 int EIO ;
 int TARGET_OBJECT_MEMORY ;
 int memory_error (int ,int ) ;
 scalar_t__ target_read (struct target_ops*,int ,int *,void*,int ,scalar_t__) ;

void
get_target_memory (struct target_ops *ops, CORE_ADDR addr, void *buf,
     LONGEST len)
{
  if (target_read (ops, TARGET_OBJECT_MEMORY, ((void*)0), buf, addr, len)
      != len)
    memory_error (EIO, addr);
}
