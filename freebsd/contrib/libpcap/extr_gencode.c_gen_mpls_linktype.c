
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct block {int dummy; } ;
typedef int compiler_state_t ;


 int BPF_B ;
 int OR_LINKPL ;


 int abort () ;
 int gen_and (struct block*,struct block*) ;
 struct block* gen_mcmp (int *,int ,int ,int ,int,int) ;

__attribute__((used)) static struct block *
gen_mpls_linktype(compiler_state_t *cstate, int proto)
{
 struct block *b0, *b1;

        switch (proto) {

        case 129:

                b0 = gen_mcmp(cstate, OR_LINKPL, (u_int)-2, BPF_B, 0x01, 0x01);

                b1 = gen_mcmp(cstate, OR_LINKPL, 0, BPF_B, 0x40, 0xf0);
                gen_and(b0, b1);
                return b1;

       case 128:

                b0 = gen_mcmp(cstate, OR_LINKPL, (u_int)-2, BPF_B, 0x01, 0x01);

                b1 = gen_mcmp(cstate, OR_LINKPL, 0, BPF_B, 0x60, 0xf0);
                gen_and(b0, b1);
                return b1;

       default:
                abort();
        }
}
