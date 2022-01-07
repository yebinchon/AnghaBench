
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hrtimer {int mtx; int callout; } ;


 int MTX_DEF ;
 int MTX_NOWITNESS ;
 int MTX_RECURSE ;
 int callout_init_mtx (int *,int *,int ) ;
 int memset (struct hrtimer*,int ,int) ;
 int mtx_init (int *,char*,int *,int) ;

void
linux_hrtimer_init(struct hrtimer *hrtimer)
{

 memset(hrtimer, 0, sizeof(*hrtimer));
 mtx_init(&hrtimer->mtx, "hrtimer", ((void*)0),
     MTX_DEF | MTX_RECURSE | MTX_NOWITNESS);
 callout_init_mtx(&hrtimer->callout, &hrtimer->mtx, 0);
}
