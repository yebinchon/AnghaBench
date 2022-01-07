
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vatpit {TYPE_1__* channel; } ;
struct TYPE_2__ {int callout; } ;


 int M_VATPIT ;
 int callout_drain (int *) ;
 int free (struct vatpit*,int ) ;

void
vatpit_cleanup(struct vatpit *vatpit)
{
 int i;

 for (i = 0; i < 3; i++)
  callout_drain(&vatpit->channel[i].callout);

 free(vatpit, M_VATPIT);
}
