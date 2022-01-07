
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_char ;
struct slist {int dummy; } ;
struct TYPE_8__ {int k; } ;
struct block {struct slist* stmts; TYPE_1__ s; } ;
struct TYPE_9__ {int no_optimize; } ;
typedef TYPE_2__ compiler_state_t ;


 int BPF_B ;
 int BPF_JSET ;
 int IEEE80211_FC0_SUBTYPE_ACK ;
 int IEEE80211_FC0_SUBTYPE_CTS ;
 int IEEE80211_FC0_SUBTYPE_MASK ;
 int IEEE80211_FC0_TYPE_CTL ;
 int IEEE80211_FC0_TYPE_MASK ;
 int IEEE80211_FC1_DIR_DSTODS ;
 int IEEE80211_FC1_DIR_MASK ;
 int JMP (int ) ;
 int OR_LINKHDR ;
 int abort () ;
 int gen_and (struct block*,struct block*) ;
 struct block* gen_bcmp (TYPE_2__*,int ,int,int,int const*) ;
 struct slist* gen_load_a (TYPE_2__*,int ,int,int ) ;
 struct block* gen_mcmp (TYPE_2__*,int ,int,int ,int ,int ) ;
 int gen_not (struct block*) ;
 int gen_or (struct block*,struct block*) ;
 struct block* new_block (TYPE_2__*,int ) ;

__attribute__((used)) static struct block *
gen_wlanhostop(compiler_state_t *cstate, const u_char *eaddr, int dir)
{
 register struct block *b0, *b1, *b2;
 register struct slist *s;
 switch (dir) {
 case 129:
  s = gen_load_a(cstate, OR_LINKHDR, 1, BPF_B);
  b1 = new_block(cstate, JMP(BPF_JSET));
  b1->s.k = 0x01;
  b1->stmts = s;




  b0 = gen_bcmp(cstate, OR_LINKHDR, 24, 6, eaddr);
  gen_and(b1, b0);





  s = gen_load_a(cstate, OR_LINKHDR, 1, BPF_B);
  b2 = new_block(cstate, JMP(BPF_JSET));
  b2->s.k = 0x01;
  b2->stmts = s;
  gen_not(b2);




  b1 = gen_bcmp(cstate, OR_LINKHDR, 16, 6, eaddr);
  gen_and(b2, b1);






  gen_or(b1, b0);





  s = gen_load_a(cstate, OR_LINKHDR, 1, BPF_B);
  b1 = new_block(cstate, JMP(BPF_JSET));
  b1->s.k = 0x02;
  b1->stmts = s;
  gen_and(b1, b0);




  s = gen_load_a(cstate, OR_LINKHDR, 1, BPF_B);
  b2 = new_block(cstate, JMP(BPF_JSET));
  b2->s.k = 0x02;
  b2->stmts = s;
  gen_not(b2);




  b1 = gen_bcmp(cstate, OR_LINKHDR, 10, 6, eaddr);
  gen_and(b2, b1);






  gen_or(b1, b0);





  s = gen_load_a(cstate, OR_LINKHDR, 0, BPF_B);
  b1 = new_block(cstate, JMP(BPF_JSET));
  b1->s.k = 0x08;
  b1->stmts = s;




  gen_and(b1, b0);






  s = gen_load_a(cstate, OR_LINKHDR, 0, BPF_B);
  b2 = new_block(cstate, JMP(BPF_JSET));
  b2->s.k = 0x08;
  b2->stmts = s;
  gen_not(b2);




  b1 = gen_bcmp(cstate, OR_LINKHDR, 10, 6, eaddr);
  gen_and(b2, b1);






  gen_or(b1, b0);
  s = gen_load_a(cstate, OR_LINKHDR, 0, BPF_B);
  b1 = new_block(cstate, JMP(BPF_JSET));
  b1->s.k = 0x04;
  b1->stmts = s;
  gen_not(b1);





  gen_and(b1, b0);
  return b0;

 case 132:
  s = gen_load_a(cstate, OR_LINKHDR, 1, BPF_B);
  b1 = new_block(cstate, JMP(BPF_JSET));
  b1->s.k = 0x01;
  b1->stmts = s;




  b0 = gen_bcmp(cstate, OR_LINKHDR, 16, 6, eaddr);
  gen_and(b1, b0);





  s = gen_load_a(cstate, OR_LINKHDR, 1, BPF_B);
  b2 = new_block(cstate, JMP(BPF_JSET));
  b2->s.k = 0x01;
  b2->stmts = s;
  gen_not(b2);




  b1 = gen_bcmp(cstate, OR_LINKHDR, 4, 6, eaddr);
  gen_and(b2, b1);





  gen_or(b1, b0);





  s = gen_load_a(cstate, OR_LINKHDR, 0, BPF_B);
  b1 = new_block(cstate, JMP(BPF_JSET));
  b1->s.k = 0x08;
  b1->stmts = s;




  gen_and(b1, b0);






  s = gen_load_a(cstate, OR_LINKHDR, 0, BPF_B);
  b2 = new_block(cstate, JMP(BPF_JSET));
  b2->s.k = 0x08;
  b2->stmts = s;
  gen_not(b2);




  b1 = gen_bcmp(cstate, OR_LINKHDR, 4, 6, eaddr);
  gen_and(b2, b1);






  gen_or(b1, b0);
  s = gen_load_a(cstate, OR_LINKHDR, 0, BPF_B);
  b1 = new_block(cstate, JMP(BPF_JSET));
  b1->s.k = 0x04;
  b1->stmts = s;
  gen_not(b1);





  gen_and(b1, b0);
  return b0;

 case 130:
  s = gen_load_a(cstate, OR_LINKHDR, 0, BPF_B);
  b1 = new_block(cstate, JMP(BPF_JSET));
  b1->s.k = 0x08;
  b1->stmts = s;




  b0 = gen_bcmp(cstate, OR_LINKHDR, 4, 6, eaddr);




  gen_and(b1, b0);
  return (b0);

 case 128:
  b0 = gen_mcmp(cstate, OR_LINKHDR, 0, BPF_B, IEEE80211_FC0_TYPE_CTL,
   IEEE80211_FC0_TYPE_MASK);
  gen_not(b0);
  b1 = gen_mcmp(cstate, OR_LINKHDR, 0, BPF_B, IEEE80211_FC0_SUBTYPE_CTS,
   IEEE80211_FC0_SUBTYPE_MASK);
  gen_not(b1);
  b2 = gen_mcmp(cstate, OR_LINKHDR, 0, BPF_B, IEEE80211_FC0_SUBTYPE_ACK,
   IEEE80211_FC0_SUBTYPE_MASK);
  gen_not(b2);
  gen_and(b1, b2);
  gen_or(b0, b2);






  s = gen_load_a(cstate, OR_LINKHDR, 0, BPF_B);
  b1 = new_block(cstate, JMP(BPF_JSET));
  b1->s.k = 0x08;
  b1->stmts = s;





  gen_and(b1, b2);




  b1 = gen_bcmp(cstate, OR_LINKHDR, 10, 6, eaddr);
  gen_and(b2, b1);
  return b1;




 case 138:
  return (gen_bcmp(cstate, OR_LINKHDR, 4, 6, eaddr));

 case 137:



  b0 = gen_mcmp(cstate, OR_LINKHDR, 0, BPF_B, IEEE80211_FC0_TYPE_CTL,
   IEEE80211_FC0_TYPE_MASK);
  gen_not(b0);
  b1 = gen_mcmp(cstate, OR_LINKHDR, 0, BPF_B, IEEE80211_FC0_SUBTYPE_CTS,
   IEEE80211_FC0_SUBTYPE_MASK);
  gen_not(b1);
  b2 = gen_mcmp(cstate, OR_LINKHDR, 0, BPF_B, IEEE80211_FC0_SUBTYPE_ACK,
   IEEE80211_FC0_SUBTYPE_MASK);
  gen_not(b2);
  gen_and(b1, b2);
  gen_or(b0, b2);
  b1 = gen_bcmp(cstate, OR_LINKHDR, 10, 6, eaddr);
  gen_and(b2, b1);
  return b1;

 case 136:



  b0 = gen_mcmp(cstate, OR_LINKHDR, 0, BPF_B, IEEE80211_FC0_TYPE_CTL,
   IEEE80211_FC0_TYPE_MASK);
  gen_not(b0);
  b1 = gen_bcmp(cstate, OR_LINKHDR, 16, 6, eaddr);
  gen_and(b0, b1);
  return b1;

 case 135:






  b0 = gen_mcmp(cstate, OR_LINKHDR, 1, BPF_B,
   IEEE80211_FC1_DIR_DSTODS, IEEE80211_FC1_DIR_MASK);
  b1 = gen_bcmp(cstate, OR_LINKHDR, 24, 6, eaddr);
  gen_and(b0, b1);
  return b1;

 case 134:
  b0 = gen_wlanhostop(cstate, eaddr, 129);
  b1 = gen_wlanhostop(cstate, eaddr, 132);
  gen_and(b0, b1);
  return b1;

 case 133:
 case 131:
  b0 = gen_wlanhostop(cstate, eaddr, 129);
  b1 = gen_wlanhostop(cstate, eaddr, 132);
  gen_or(b0, b1);
  return b1;
 }
 abort();

}
