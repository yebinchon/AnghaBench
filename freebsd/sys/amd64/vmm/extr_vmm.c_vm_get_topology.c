
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct vm {int maxcpus; int threads; int cores; int sockets; } ;



void
vm_get_topology(struct vm *vm, uint16_t *sockets, uint16_t *cores,
    uint16_t *threads, uint16_t *maxcpus)
{
 *sockets = vm->sockets;
 *cores = vm->cores;
 *threads = vm->threads;
 *maxcpus = vm->maxcpus;
}
