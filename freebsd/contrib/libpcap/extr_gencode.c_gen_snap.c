
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct block {int dummy; } ;
typedef int compiler_state_t ;
typedef int bpf_u_int32 ;


 int LLCSAP_SNAP ;
 int OR_LLC ;
 struct block* gen_bcmp (int *,int ,int ,int,int*) ;

__attribute__((used)) static struct block *
gen_snap(compiler_state_t *cstate, bpf_u_int32 orgcode, bpf_u_int32 ptype)
{
 u_char snapblock[8];

 snapblock[0] = LLCSAP_SNAP;
 snapblock[1] = LLCSAP_SNAP;
 snapblock[2] = 0x03;
 snapblock[3] = (u_char)(orgcode >> 16);
 snapblock[4] = (u_char)(orgcode >> 8);
 snapblock[5] = (u_char)(orgcode >> 0);
 snapblock[6] = (u_char)(ptype >> 8);
 snapblock[7] = (u_char)(ptype >> 0);
 return gen_bcmp(cstate, OR_LLC, 0, 8, snapblock);
}
