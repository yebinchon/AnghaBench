
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int bpf_ctx_t ;
struct TYPE_3__ {int buflen; } ;
typedef TYPE_1__ bpf_args_t ;



__attribute__((used)) static uint32_t
retBL(const bpf_ctx_t *bc, bpf_args_t *args, uint32_t A)
{

 return args->buflen;
}
