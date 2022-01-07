
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct vmctx {int fd; } ;
struct vm_cpu_topology {int maxcpus; int threads; int cores; int sockets; } ;


 int VM_GET_TOPOLOGY ;
 int bzero (struct vm_cpu_topology*,int) ;
 int ioctl (int ,int ,struct vm_cpu_topology*) ;

int
vm_get_topology(struct vmctx *ctx,
    uint16_t *sockets, uint16_t *cores, uint16_t *threads, uint16_t *maxcpus)
{
 struct vm_cpu_topology topology;
 int error;

 bzero(&topology, sizeof (struct vm_cpu_topology));
 error = ioctl(ctx->fd, VM_GET_TOPOLOGY, &topology);
 if (error == 0) {
  *sockets = topology.sockets;
  *cores = topology.cores;
  *threads = topology.threads;
  *maxcpus = topology.maxcpus;
 }
 return (error);
}
