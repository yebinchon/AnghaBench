
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
typedef int u_char ;
struct uni_xtraffic {int ftag; int btag; int fdisc; int bdisc; } ;
struct uni_msg {int* b_rptr; } ;


 int DEC_GETF3 (int ,int ,scalar_t__) ;
 int TRAFFIC_BABR1 ;
 int TRAFFIC_BMBS0 ;
 int TRAFFIC_BMBS1 ;
 int TRAFFIC_BPCR0 ;
 int TRAFFIC_BPCR1 ;
 int TRAFFIC_BSCR0 ;
 int TRAFFIC_BSCR1 ;
 int TRAFFIC_FABR1 ;
 int TRAFFIC_FMBS0 ;
 int TRAFFIC_FPCR0 ;
 int TRAFFIC_FPCR1 ;
 int TRAFFIC_FSCR0 ;
 int TRAFFIC_FSCR1 ;
 int UNI_TRAFFIC_BDISC ;

 scalar_t__ UNI_TRAFFIC_BEST_P ;
 int UNI_TRAFFIC_BTAG ;
 int UNI_TRAFFIC_FDISC ;
 int UNI_TRAFFIC_FTAG ;

 scalar_t__ UNI_TRAFFIC_MOPT_P ;
 int babr1 ;
 int bmbs0 ;
 int bmbs1 ;
 int bpcr0 ;
 int bpcr1 ;
 int bscr0 ;
 int bscr1 ;
 int fabr1 ;
 int fmbs0 ;
 int fpcr0 ;
 int fpcr1 ;
 int fscr0 ;
 int fscr1 ;

__attribute__((used)) static int
decode_traffic_common(struct uni_xtraffic *ie, struct uni_msg *msg,
    u_int ielen, u_int *present)
{
 u_char c;

 while(ielen--) {
  switch(c = *msg->b_rptr++) {

    default:
    rej:
   return -1;

    DEC_GETF3(TRAFFIC_FPCR0, fpcr0, *present);
    DEC_GETF3(TRAFFIC_BPCR0, bpcr0, *present);
    DEC_GETF3(TRAFFIC_FPCR1, fpcr1, *present);
    DEC_GETF3(TRAFFIC_BPCR1, bpcr1, *present);
    DEC_GETF3(TRAFFIC_FSCR0, fscr0, *present);
    DEC_GETF3(TRAFFIC_BSCR0, bscr0, *present);
    DEC_GETF3(TRAFFIC_FSCR1, fscr1, *present);
    DEC_GETF3(TRAFFIC_BSCR1, bscr1, *present);
    DEC_GETF3(TRAFFIC_FMBS0, fmbs0, *present);
    DEC_GETF3(TRAFFIC_BMBS0, bmbs0, *present);
    DEC_GETF3(TRAFFIC_BMBS1, bmbs1, *present);
    DEC_GETF3(TRAFFIC_FABR1, fabr1, *present);
    DEC_GETF3(TRAFFIC_BABR1, babr1, *present);

    case 129:
   *present |= UNI_TRAFFIC_BEST_P;
   break;

    case 128:
   if(ielen == 0)
    return -1;
   ielen--;
   if(!(*present & UNI_TRAFFIC_MOPT_P)) {
    *present |= UNI_TRAFFIC_MOPT_P;
    ie->ftag = (*msg->b_rptr&UNI_TRAFFIC_FTAG)?1:0;
    ie->btag = (*msg->b_rptr&UNI_TRAFFIC_BTAG)?1:0;
    ie->fdisc = (*msg->b_rptr&UNI_TRAFFIC_FDISC)?1:0;
    ie->bdisc = (*msg->b_rptr&UNI_TRAFFIC_BDISC)?1:0;
   }
   msg->b_rptr++;
   break;
  }
 }
 return 0;
}
