
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm {int dummy; } ;
struct vatpit_callout_arg {int channel_num; struct vatpit* vatpit; } ;
struct vatpit {TYPE_1__* channel; int freq_bt; int mtx; struct vm* vm; } ;
struct TYPE_2__ {struct vatpit_callout_arg callout_arg; int callout; } ;


 int FREQ2BT (int ,int *) ;
 int MTX_SPIN ;
 int M_VATPIT ;
 int M_WAITOK ;
 int M_ZERO ;
 int PIT_8254_FREQ ;
 int callout_init (int *,int) ;
 struct vatpit* malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;

struct vatpit *
vatpit_init(struct vm *vm)
{
 struct vatpit *vatpit;
 struct vatpit_callout_arg *arg;
 int i;

 vatpit = malloc(sizeof(struct vatpit), M_VATPIT, M_WAITOK | M_ZERO);
 vatpit->vm = vm;

 mtx_init(&vatpit->mtx, "vatpit lock", ((void*)0), MTX_SPIN);

 FREQ2BT(PIT_8254_FREQ, &vatpit->freq_bt);

 for (i = 0; i < 3; i++) {
  callout_init(&vatpit->channel[i].callout, 1);
  arg = &vatpit->channel[i].callout_arg;
  arg->vatpit = vatpit;
  arg->channel_num = i;
 }

 return (vatpit);
}
