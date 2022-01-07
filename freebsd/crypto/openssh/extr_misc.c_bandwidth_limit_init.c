
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int64_t ;
struct bwlimit {size_t buflen; int bwend; int bwstart; scalar_t__ lamt; int rate; int thresh; } ;


 int timerclear (int *) ;

void
bandwidth_limit_init(struct bwlimit *bw, u_int64_t kbps, size_t buflen)
{
 bw->buflen = buflen;
 bw->rate = kbps;
 bw->thresh = bw->rate;
 bw->lamt = 0;
 timerclear(&bw->bwstart);
 timerclear(&bw->bwend);
}
