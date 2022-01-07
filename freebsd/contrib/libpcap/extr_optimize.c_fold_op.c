
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct stmt {int code; int k; } ;
struct TYPE_5__ {scalar_t__ done; TYPE_1__* vmap; } ;
typedef TYPE_2__ opt_state_t ;
typedef int compiler_state_t ;
typedef int bpf_u_int32 ;
struct TYPE_4__ {int const_val; } ;





 int BPF_IMM ;
 int BPF_LD ;



 int BPF_OP (int) ;




 int abort () ;
 int bpf_error (int *,char*) ;

__attribute__((used)) static void
fold_op(compiler_state_t *cstate, opt_state_t *opt_state,
    struct stmt *s, int v0, int v1)
{
 bpf_u_int32 a, b;

 a = opt_state->vmap[v0].const_val;
 b = opt_state->vmap[v1].const_val;

 switch (BPF_OP(s->code)) {
 case 137:
  a += b;
  break;

 case 129:
  a -= b;
  break;

 case 132:
  a *= b;
  break;

 case 135:
  if (b == 0)
   bpf_error(cstate, "division by zero");
  a /= b;
  break;

 case 133:
  if (b == 0)
   bpf_error(cstate, "modulus by zero");
  a %= b;
  break;

 case 136:
  a &= b;
  break;

 case 131:
  a |= b;
  break;

 case 128:
  a ^= b;
  break;

 case 134:
  a <<= b;
  break;

 case 130:
  a >>= b;
  break;

 default:
  abort();
 }
 s->k = a;
 s->code = BPF_LD|BPF_IMM;
 opt_state->done = 0;
}
