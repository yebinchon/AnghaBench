
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int k; struct slist* jf; struct slist* jt; } ;
struct slist {TYPE_3__ s; } ;
struct TYPE_8__ {int reg; } ;
struct TYPE_7__ {int constant_part; } ;
struct TYPE_10__ {int no_optimize; scalar_t__ linktype; TYPE_2__ off_linkpl; TYPE_1__ off_outermostlinkhdr; } ;
typedef TYPE_4__ compiler_state_t ;


 int BPF_ABS ;
 int BPF_ADD ;
 int BPF_ALU ;
 int BPF_AND ;
 int BPF_B ;
 int BPF_IMM ;
 int BPF_IND ;
 int BPF_JSET ;
 int BPF_K ;
 int BPF_LD ;
 int BPF_LDX ;
 int BPF_MEM ;
 int BPF_MISC ;
 int BPF_ST ;
 int BPF_TXA ;
 int BPF_W ;
 scalar_t__ DLT_IEEE802_11_RADIO ;
 int JMP (int ) ;
 void* SWAPLONG (int) ;
 struct slist* new_stmt (TYPE_4__*,int) ;
 int sappend (struct slist*,struct slist*) ;

__attribute__((used)) static struct slist *
gen_load_802_11_header_len(compiler_state_t *cstate, struct slist *s, struct slist *snext)
{
 struct slist *s2;
 struct slist *sjset_data_frame_1;
 struct slist *sjset_data_frame_2;
 struct slist *sjset_qos;
 struct slist *sjset_radiotap_flags_present;
 struct slist *sjset_radiotap_ext_present;
 struct slist *sjset_radiotap_tsft_present;
 struct slist *sjset_tsft_datapad, *sjset_notsft_datapad;
 struct slist *s_roundup;

 if (cstate->off_linkpl.reg == -1) {






  return (s);
 }






 cstate->no_optimize = 1;
 if (s == ((void*)0)) {
  s = new_stmt(cstate, BPF_LDX|BPF_IMM);
  s->s.k = cstate->off_outermostlinkhdr.constant_part;
 }
 s2 = new_stmt(cstate, BPF_MISC|BPF_TXA);
 sappend(s, s2);
 s2 = new_stmt(cstate, BPF_ALU|BPF_ADD|BPF_K);
 s2->s.k = 24;
 sappend(s, s2);
 s2 = new_stmt(cstate, BPF_ST);
 s2->s.k = cstate->off_linkpl.reg;
 sappend(s, s2);

 s2 = new_stmt(cstate, BPF_LD|BPF_IND|BPF_B);
 s2->s.k = 0;
 sappend(s, s2);






 sjset_data_frame_1 = new_stmt(cstate, JMP(BPF_JSET));
 sjset_data_frame_1->s.k = 0x08;
 sappend(s, sjset_data_frame_1);





 sjset_data_frame_1->s.jt = sjset_data_frame_2 = new_stmt(cstate, JMP(BPF_JSET));
 sjset_data_frame_2->s.k = 0x04;
 sappend(s, sjset_data_frame_2);
 sjset_data_frame_1->s.jf = snext;






 sjset_data_frame_2->s.jt = snext;
 sjset_data_frame_2->s.jf = sjset_qos = new_stmt(cstate, JMP(BPF_JSET));
 sjset_qos->s.k = 0x80;
 sappend(s, sjset_qos);







 sjset_qos->s.jt = s2 = new_stmt(cstate, BPF_LD|BPF_MEM);
 s2->s.k = cstate->off_linkpl.reg;
 sappend(s, s2);
 s2 = new_stmt(cstate, BPF_ALU|BPF_ADD|BPF_IMM);
 s2->s.k = 2;
 sappend(s, s2);
 s2 = new_stmt(cstate, BPF_ST);
 s2->s.k = cstate->off_linkpl.reg;
 sappend(s, s2);
 if (cstate->linktype == DLT_IEEE802_11_RADIO) {




  sjset_qos->s.jf = s2 = new_stmt(cstate, BPF_LD|BPF_ABS|BPF_W);
  s2->s.k = 4;
  sappend(s, s2);

  sjset_radiotap_flags_present = new_stmt(cstate, JMP(BPF_JSET));
  sjset_radiotap_flags_present->s.k = SWAPLONG(0x00000002);
  sappend(s, sjset_radiotap_flags_present);




  sjset_radiotap_flags_present->s.jf = snext;




  sjset_radiotap_ext_present = new_stmt(cstate, JMP(BPF_JSET));
  sjset_radiotap_ext_present->s.k = SWAPLONG(0x80000000);
  sappend(s, sjset_radiotap_ext_present);
  sjset_radiotap_flags_present->s.jt = sjset_radiotap_ext_present;




  sjset_radiotap_ext_present->s.jt = snext;




  sjset_radiotap_tsft_present = new_stmt(cstate, JMP(BPF_JSET));
  sjset_radiotap_tsft_present->s.k = SWAPLONG(0x00000001);
  sappend(s, sjset_radiotap_tsft_present);
  sjset_radiotap_ext_present->s.jf = sjset_radiotap_tsft_present;
  s2 = new_stmt(cstate, BPF_LD|BPF_ABS|BPF_B);
  s2->s.k = 16;
  sappend(s, s2);
  sjset_radiotap_tsft_present->s.jt = s2;

  sjset_tsft_datapad = new_stmt(cstate, JMP(BPF_JSET));
  sjset_tsft_datapad->s.k = 0x20;
  sappend(s, sjset_tsft_datapad);
  s2 = new_stmt(cstate, BPF_LD|BPF_ABS|BPF_B);
  s2->s.k = 8;
  sappend(s, s2);
  sjset_radiotap_tsft_present->s.jf = s2;

  sjset_notsft_datapad = new_stmt(cstate, JMP(BPF_JSET));
  sjset_notsft_datapad->s.k = 0x20;
  sappend(s, sjset_notsft_datapad);
  s_roundup = new_stmt(cstate, BPF_LD|BPF_MEM);
  s_roundup->s.k = cstate->off_linkpl.reg;
  sappend(s, s_roundup);
  s2 = new_stmt(cstate, BPF_ALU|BPF_ADD|BPF_IMM);
  s2->s.k = 3;
  sappend(s, s2);
  s2 = new_stmt(cstate, BPF_ALU|BPF_AND|BPF_IMM);
  s2->s.k = ~3;
  sappend(s, s2);
  s2 = new_stmt(cstate, BPF_ST);
  s2->s.k = cstate->off_linkpl.reg;
  sappend(s, s2);

  sjset_tsft_datapad->s.jt = s_roundup;
  sjset_tsft_datapad->s.jf = snext;
  sjset_notsft_datapad->s.jt = s_roundup;
  sjset_notsft_datapad->s.jf = snext;
 } else
  sjset_qos->s.jf = snext;

 return s;
}
