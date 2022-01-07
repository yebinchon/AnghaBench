
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_12__ ;


struct TYPE_17__ {int k; } ;
struct slist {TYPE_1__ s; } ;
struct block {int dummy; } ;
struct arth {int regno; struct slist* s; struct block* b; } ;
struct TYPE_16__ {int constant_part; } ;
struct TYPE_18__ {int off_nl; TYPE_12__ off_linkpl; TYPE_12__ off_linkhdr; int linktype; } ;
typedef TYPE_2__ compiler_state_t ;


 int BPF_ADD ;
 int BPF_ALU ;
 int BPF_B ;
 int BPF_H ;
 int BPF_IND ;
 int BPF_LD ;
 int BPF_MISC ;
 int BPF_ST ;
 int BPF_TAX ;
 int BPF_W ;
 int BPF_X ;
 int DLT_IEEE802_11_RADIO ;
 int DLT_IEEE802_11_RADIO_AVS ;
 int DLT_PRISM_HEADER ;
 int OR_LINKPL ;
 int alloc_reg (TYPE_2__*) ;
 int bpf_error (TYPE_2__*,char*) ;
 int free_reg (TYPE_2__*,int) ;
 struct slist* gen_abs_offset_varpart (TYPE_2__*,TYPE_12__*) ;
 int gen_and (struct block*,struct block*) ;
 struct block* gen_cmp (TYPE_2__*,int ,int,int,int) ;
 struct block* gen_ipfrag (TYPE_2__*) ;
 struct slist* gen_loadx_iphdrlen (TYPE_2__*) ;
 struct block* gen_proto_abbrev (TYPE_2__*,int const) ;
 struct slist* new_stmt (TYPE_2__*,int) ;
 int sappend (struct slist*,struct slist*) ;
 struct slist* xfer_to_a (TYPE_2__*,struct arth*) ;
 struct slist* xfer_to_x (TYPE_2__*,struct arth*) ;

struct arth *
gen_load(compiler_state_t *cstate, int proto, struct arth *inst, int size)
{
 struct slist *s, *tmp;
 struct block *b;
 int regno = alloc_reg(cstate);

 free_reg(cstate, inst->regno);
 switch (size) {

 default:
  bpf_error(cstate, "data size must be 1, 2, or 4");

 case 1:
  size = BPF_B;
  break;

 case 2:
  size = BPF_H;
  break;

 case 4:
  size = BPF_W;
  break;
 }
 switch (proto) {
 default:
  bpf_error(cstate, "unsupported index operation");

 case 134:





  if (cstate->linktype != DLT_IEEE802_11_RADIO_AVS &&
      cstate->linktype != DLT_IEEE802_11_RADIO &&
      cstate->linktype != DLT_PRISM_HEADER)
   bpf_error(cstate, "radio information not present in capture");





  s = xfer_to_x(cstate, inst);




  tmp = new_stmt(cstate, BPF_LD|BPF_IND|size);
  sappend(s, tmp);
  sappend(inst->s, s);
  break;

 case 138:
  s = gen_abs_offset_varpart(cstate, &cstate->off_linkhdr);
  if (s != ((void*)0)) {
   sappend(s, xfer_to_a(cstate, inst));
   sappend(s, new_stmt(cstate, BPF_ALU|BPF_ADD|BPF_X));
   sappend(s, new_stmt(cstate, BPF_MISC|BPF_TAX));
  } else
   s = xfer_to_x(cstate, inst);
  tmp = new_stmt(cstate, BPF_LD|BPF_IND|size);
  tmp->s.k = cstate->off_linkhdr.constant_part;
  sappend(s, tmp);
  sappend(inst->s, s);
  break;

 case 141:
 case 149:
 case 133:
 case 148:
 case 146:
 case 132:
 case 139:
 case 136:
 case 137:
 case 140:






  s = gen_abs_offset_varpart(cstate, &cstate->off_linkpl);
  if (s != ((void*)0)) {
   sappend(s, xfer_to_a(cstate, inst));
   sappend(s, new_stmt(cstate, BPF_ALU|BPF_ADD|BPF_X));
   sappend(s, new_stmt(cstate, BPF_MISC|BPF_TAX));
  } else
   s = xfer_to_x(cstate, inst);
  tmp = new_stmt(cstate, BPF_LD|BPF_IND|size);
  tmp->s.k = cstate->off_linkpl.constant_part + cstate->off_nl;
  sappend(s, tmp);
  sappend(inst->s, s);





  b = gen_proto_abbrev(cstate, proto);
  if (inst->b)
   gen_and(inst->b, b);
  inst->b = b;
  break;

 case 131:
 case 130:
 case 129:
 case 145:
 case 143:
 case 142:
 case 135:
 case 128:
 case 147:
  s = gen_loadx_iphdrlen(cstate);
  sappend(s, xfer_to_a(cstate, inst));
  sappend(s, new_stmt(cstate, BPF_ALU|BPF_ADD|BPF_X));
  sappend(s, new_stmt(cstate, BPF_MISC|BPF_TAX));
  sappend(s, tmp = new_stmt(cstate, BPF_LD|BPF_IND|size));
  tmp->s.k = cstate->off_linkpl.constant_part + cstate->off_nl;
  sappend(inst->s, s);







  gen_and(gen_proto_abbrev(cstate, proto), b = gen_ipfrag(cstate));
  if (inst->b)
   gen_and(inst->b, b);
  gen_and(gen_proto_abbrev(cstate, 141), b);
  inst->b = b;
  break;
 case 144:




        b = gen_proto_abbrev(cstate, 140);
        if (inst->b) {
            gen_and(inst->b, b);
        }
        inst->b = b;




        b = gen_cmp(cstate, OR_LINKPL, 6, BPF_B, 58);
        if (inst->b) {
            gen_and(inst->b, b);
        }
        inst->b = b;


        s = gen_abs_offset_varpart(cstate, &cstate->off_linkpl);
        if (s != ((void*)0)) {
            sappend(s, xfer_to_a(cstate, inst));
            sappend(s, new_stmt(cstate, BPF_ALU|BPF_ADD|BPF_X));
            sappend(s, new_stmt(cstate, BPF_MISC|BPF_TAX));
        } else {
            s = xfer_to_x(cstate, inst);
        }
        tmp = new_stmt(cstate, BPF_LD|BPF_IND|size);
        tmp->s.k = cstate->off_linkpl.constant_part + cstate->off_nl + 40;

        sappend(s, tmp);
        sappend(inst->s, s);

        break;
 }
 inst->regno = regno;
 s = new_stmt(cstate, BPF_ST);
 s->s.k = regno;
 sappend(inst->s, s);

 return inst;
}
