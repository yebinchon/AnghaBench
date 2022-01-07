
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int xpt_config_hook; } ;


 int M_CAMXPT ;
 int bootverbose ;
 int config_intrhook_disestablish (int *) ;
 int free (void*,int ) ;
 int periphdriver_init (int) ;
 int xpt_for_all_devices (int ,int *) ;
 int xptpassannouncefunc ;
 TYPE_1__ xsoftc ;

__attribute__((used)) static void
xpt_finishconfig_task(void *context, int pending)
{

 periphdriver_init(2);





 if (!bootverbose)
  xpt_for_all_devices(xptpassannouncefunc, ((void*)0));


 config_intrhook_disestablish(&xsoftc.xpt_config_hook);

 free(context, M_CAMXPT);
}
