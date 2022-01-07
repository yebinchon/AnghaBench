
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int units; } ;


 int EBUSY ;
 int TAILQ_EMPTY (int *) ;
 TYPE_1__ ctlfe_driver ;
 int ctlfeasync ;
 int xpt_register_async (int ,int ,int *,int *) ;

__attribute__((used)) static int
ctlfeperiphdeinit(void)
{


 if (!TAILQ_EMPTY(&ctlfe_driver.units))
  return (EBUSY);
 xpt_register_async(0, ctlfeasync, ((void*)0), ((void*)0));
 return (0);
}
