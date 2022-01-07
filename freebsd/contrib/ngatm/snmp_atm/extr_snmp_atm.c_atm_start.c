
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ifi_type; } ;
struct TYPE_4__ {TYPE_1__ ifmd_data; } ;
struct mibif {int * xnotify; TYPE_2__ mib; } ;


 scalar_t__ IFT_ATM ;
 int attach_if (struct mibif*) ;
 struct mibif* mib_first_if () ;
 struct mibif* mib_next_if (struct mibif*) ;
 int module ;
 int oid_begemotAtm ;
 int or_register (int *,char*,int ) ;
 int reg_atm ;
 int started ;

__attribute__((used)) static void
atm_start(void)
{
 struct mibif *ifp;

 reg_atm = or_register(&oid_begemotAtm,
     "The Begemot MIB for ATM interfaces.", module);

 started = 1;
 for (ifp = mib_first_if(); ifp != ((void*)0); ifp = mib_next_if(ifp))
  if (ifp->mib.ifmd_data.ifi_type == IFT_ATM &&
      ifp->xnotify == ((void*)0))
   attach_if(ifp);
}
