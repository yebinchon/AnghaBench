
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef unsigned int (* bpfjit_func_t ) (int *,TYPE_1__*) ;
struct TYPE_4__ {unsigned int wirelen; unsigned int buflen; int const* pkt; } ;
typedef TYPE_1__ bpf_args_t ;



__attribute__((used)) static inline
unsigned int jitcall(bpfjit_func_t fn,
    const uint8_t *pkt, unsigned int wirelen, unsigned int buflen)
{
 bpf_args_t args;

 args.pkt = pkt;
 args.wirelen = wirelen;
 args.buflen = buflen;

 return fn(((void*)0), &args);
}
