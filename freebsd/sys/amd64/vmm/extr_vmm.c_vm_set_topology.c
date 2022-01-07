
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct vm {scalar_t__ maxcpus; scalar_t__ threads; scalar_t__ cores; scalar_t__ sockets; } ;


 int EINVAL ;
 scalar_t__ VM_MAXCPU ;

int
vm_set_topology(struct vm *vm, uint16_t sockets, uint16_t cores,
    uint16_t threads, uint16_t maxcpus)
{
 if (maxcpus != 0)
  return (EINVAL);
 if ((sockets * cores * threads) > vm->maxcpus)
  return (EINVAL);

 vm->sockets = sockets;
 vm->cores = cores;
 vm->threads = threads;
 vm->maxcpus = VM_MAXCPU;
 return(0);
}
