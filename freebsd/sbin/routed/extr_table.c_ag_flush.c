
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ag_info {int ag_mask; int ag_dst_h; int ag_state; scalar_t__ ag_gate; scalar_t__ ag_pref; scalar_t__ ag_tag; scalar_t__ ag_nhop; struct ag_info* ag_cors; } ;
typedef int naddr ;


 int AGS_CORS_GATE ;
 int AGS_FINE_GATE ;
 int AGS_REDUN0 ;
 int AGS_REDUN1 ;
 int AGS_SUPPRESS ;
 scalar_t__ AG_IS_REDUN (int) ;
 int CHECK_AG () ;
 int ag_del (struct ag_info*) ;
 struct ag_info* ag_finest ;
 int ag_out (struct ag_info*,void (*) (struct ag_info*)) ;

void
ag_flush(naddr lim_dst_h,
  naddr lim_mask,
  void (*out)(struct ag_info *))
{
 struct ag_info *ag, *ag_cors;
 naddr dst_h;


 for (ag = ag_finest;
      ag != ((void*)0) && ag->ag_mask >= lim_mask;
      ag = ag_cors) {
  ag_cors = ag->ag_cors;


  dst_h = ag->ag_dst_h;
  if ((dst_h & lim_mask) != lim_dst_h)
   continue;

  if (!(ag->ag_state & AGS_SUPPRESS))
   ag_out(ag, out);

  else for ( ; ; ag_cors = ag_cors->ag_cors) {


   if (ag_cors == ((void*)0)) {



    ag_out(ag, out);
    break;
   }

   if ((dst_h & ag_cors->ag_mask) == ag_cors->ag_dst_h) {







    if (ag->ag_gate != ag_cors->ag_gate
        && !(ag->ag_state & AGS_FINE_GATE)
        && !(ag_cors->ag_state & AGS_CORS_GATE)) {
     ag_out(ag, out);
     break;
    }






    if (ag_cors->ag_pref <= ag->ag_pref) {
        if (AG_IS_REDUN(ag->ag_state)
     && ag_cors->ag_mask==ag->ag_mask<<1) {
     if (ag_cors->ag_dst_h == dst_h)
         ag_cors->ag_state |= AGS_REDUN0;
     else
         ag_cors->ag_state |= AGS_REDUN1;
        }
        if (ag->ag_tag != ag_cors->ag_tag)
         ag_cors->ag_tag = 0;
        if (ag->ag_nhop != ag_cors->ag_nhop)
         ag_cors->ag_nhop = 0;
        break;
    }
   }
  }


  ag_cors = ag->ag_cors;
  ag_del(ag);
 }

 CHECK_AG();
}
