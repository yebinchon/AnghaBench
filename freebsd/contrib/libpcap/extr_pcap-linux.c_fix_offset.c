
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_insn {int k; } ;
typedef scalar_t__ bpf_int32 ;


 int SKF_AD_OFF ;
 int SKF_AD_PKTTYPE ;
 int SKF_AD_PROTOCOL ;
 int SLL_HDR_LEN ;

__attribute__((used)) static int
fix_offset(struct bpf_insn *p)
{



 if (p->k >= SLL_HDR_LEN) {






  p->k -= SLL_HDR_LEN;
 } else if (p->k == 0) {




  p->k = SKF_AD_OFF + SKF_AD_PKTTYPE;
 } else if (p->k == 14) {




  p->k = SKF_AD_OFF + SKF_AD_PROTOCOL;
 } else if ((bpf_int32)(p->k) > 0) {





  return -1;
 }
 return 0;
}
