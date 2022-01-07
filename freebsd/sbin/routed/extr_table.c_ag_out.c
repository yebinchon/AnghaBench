
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ag_info {int ag_state; int ag_mask; int ag_dst_h; struct ag_info* ag_cors; } ;
typedef int naddr ;


 int AGS_REDUN0 ;
 int AGS_REDUN1 ;
 int AGS_SPLIT_HZ ;

__attribute__((used)) static void
ag_out(struct ag_info *ag,
  void (*out)(struct ag_info *))
{
 struct ag_info *ag_cors;
 naddr bit;



 if (ag->ag_state & AGS_SPLIT_HZ)
  return;
 ag_cors = ag->ag_cors;
 if (ag_cors != ((void*)0)
     && ag_cors->ag_mask == ag->ag_mask<<1
     && ag_cors->ag_dst_h == (ag->ag_dst_h & ag_cors->ag_mask)) {
  ag_cors->ag_state |= ((ag_cors->ag_dst_h == ag->ag_dst_h)
          ? AGS_REDUN0
          : AGS_REDUN1);
 }






 if (ag->ag_state & AGS_REDUN0) {
  if (ag->ag_state & AGS_REDUN1)
   return;

  bit = (-ag->ag_mask) >> 1;
  ag->ag_dst_h |= bit;
  ag->ag_mask |= bit;

 } else if (ag->ag_state & AGS_REDUN1) {

  bit = (-ag->ag_mask) >> 1;
  ag->ag_mask |= bit;
 }
 out(ag);
}
