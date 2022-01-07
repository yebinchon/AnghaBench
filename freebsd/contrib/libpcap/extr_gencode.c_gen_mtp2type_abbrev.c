
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct block {int dummy; } ;
struct TYPE_5__ {int off_li_hsl; int linktype; int off_li; } ;
typedef TYPE_1__ compiler_state_t ;


 int BPF_B ;
 int BPF_H ;
 int BPF_JEQ ;
 int BPF_JGT ;
 int DLT_ERF ;
 int DLT_MTP2 ;
 int DLT_MTP2_WITH_PHDR ;






 int OR_PACKET ;
 int abort () ;
 int bpf_error (TYPE_1__*,char*) ;
 int gen_and (struct block*,struct block*) ;
 struct block* gen_ncmp (TYPE_1__*,int ,int ,int ,int,int ,int,int) ;

struct block *
gen_mtp2type_abbrev(compiler_state_t *cstate, int type)
{
 struct block *b0, *b1;

 switch (type) {

 case 130:
  if ( (cstate->linktype != DLT_MTP2) &&
       (cstate->linktype != DLT_ERF) &&
       (cstate->linktype != DLT_MTP2_WITH_PHDR) )
   bpf_error(cstate, "'fisu' supported only on MTP2");

  b0 = gen_ncmp(cstate, OR_PACKET, cstate->off_li, BPF_B, 0x3f, BPF_JEQ, 0, 0);
  break;

 case 129:
  if ( (cstate->linktype != DLT_MTP2) &&
       (cstate->linktype != DLT_ERF) &&
       (cstate->linktype != DLT_MTP2_WITH_PHDR) )
   bpf_error(cstate, "'lssu' supported only on MTP2");
  b0 = gen_ncmp(cstate, OR_PACKET, cstate->off_li, BPF_B, 0x3f, BPF_JGT, 1, 2);
  b1 = gen_ncmp(cstate, OR_PACKET, cstate->off_li, BPF_B, 0x3f, BPF_JGT, 0, 0);
  gen_and(b1, b0);
  break;

 case 128:
  if ( (cstate->linktype != DLT_MTP2) &&
       (cstate->linktype != DLT_ERF) &&
       (cstate->linktype != DLT_MTP2_WITH_PHDR) )
   bpf_error(cstate, "'msu' supported only on MTP2");
  b0 = gen_ncmp(cstate, OR_PACKET, cstate->off_li, BPF_B, 0x3f, BPF_JGT, 0, 2);
  break;

 case 133:
  if ( (cstate->linktype != DLT_MTP2) &&
       (cstate->linktype != DLT_ERF) &&
       (cstate->linktype != DLT_MTP2_WITH_PHDR) )
   bpf_error(cstate, "'hfisu' supported only on MTP2_HSL");

  b0 = gen_ncmp(cstate, OR_PACKET, cstate->off_li_hsl, BPF_H, 0xff80, BPF_JEQ, 0, 0);
  break;

 case 132:
  if ( (cstate->linktype != DLT_MTP2) &&
       (cstate->linktype != DLT_ERF) &&
       (cstate->linktype != DLT_MTP2_WITH_PHDR) )
   bpf_error(cstate, "'hlssu' supported only on MTP2_HSL");
  b0 = gen_ncmp(cstate, OR_PACKET, cstate->off_li_hsl, BPF_H, 0xff80, BPF_JGT, 1, 0x0100);
  b1 = gen_ncmp(cstate, OR_PACKET, cstate->off_li_hsl, BPF_H, 0xff80, BPF_JGT, 0, 0);
  gen_and(b1, b0);
  break;

 case 131:
  if ( (cstate->linktype != DLT_MTP2) &&
       (cstate->linktype != DLT_ERF) &&
       (cstate->linktype != DLT_MTP2_WITH_PHDR) )
   bpf_error(cstate, "'hmsu' supported only on MTP2_HSL");
  b0 = gen_ncmp(cstate, OR_PACKET, cstate->off_li_hsl, BPF_H, 0xff80, BPF_JGT, 0, 0x0100);
  break;

 default:
  abort();
 }
 return b0;
}
