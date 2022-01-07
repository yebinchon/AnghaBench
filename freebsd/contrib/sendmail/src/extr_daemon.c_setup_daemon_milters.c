
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int d_inputfilters; int * d_inputfilterlist; } ;


 TYPE_1__* Daemons ;
 int MAXFILTERS ;
 scalar_t__ MD_SMTP ;
 int NDaemons ;
 scalar_t__ OpMode ;
 int milter_config (int *,int ,int ) ;

void
setup_daemon_milters()
{
 int idx;

 if (OpMode == MD_SMTP)
 {

  return;
 }

 for (idx = 0; idx < NDaemons; idx++)
 {
  if (Daemons[idx].d_inputfilterlist != ((void*)0))
  {
   milter_config(Daemons[idx].d_inputfilterlist,
          Daemons[idx].d_inputfilters,
          MAXFILTERS);
  }
 }
}
