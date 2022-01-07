
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint16_t ;
struct vmctx {int fd; } ;
struct vm_cpu_topology {void* maxcpus; void* threads; void* cores; void* sockets; } ;


 int VM_SET_TOPOLOGY ;
 int bzero (struct vm_cpu_topology*,int) ;
 int ioctl (int ,int ,struct vm_cpu_topology*) ;

int
vm_set_topology(struct vmctx *ctx,
    uint16_t sockets, uint16_t cores, uint16_t threads, uint16_t maxcpus)
{
 struct vm_cpu_topology topology;

 bzero(&topology, sizeof (struct vm_cpu_topology));
 topology.sockets = sockets;
 topology.cores = cores;
 topology.threads = threads;
 topology.maxcpus = maxcpus;
 return (ioctl(ctx->fd, VM_SET_TOPOLOGY, &topology));
}
