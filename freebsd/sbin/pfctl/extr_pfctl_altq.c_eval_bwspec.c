
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int64_t ;
struct node_queue_bw {scalar_t__ bw_absolute; int bw_percent; } ;


 int MIN (scalar_t__,int) ;

u_int64_t
eval_bwspec(struct node_queue_bw *bw, u_int64_t ref_bw)
{
 if (bw->bw_absolute > 0)
  return (MIN(bw->bw_absolute, ref_bw));

 if (bw->bw_percent > 0)
  return (ref_bw / 100 * bw->bw_percent);

 return (0);
}
