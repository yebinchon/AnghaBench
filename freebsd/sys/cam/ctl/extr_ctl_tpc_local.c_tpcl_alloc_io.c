
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ctl_io {int dummy; } ctl_io ;
struct TYPE_2__ {int ctl_pool_ref; } ;
struct tpcl_softc {TYPE_1__ port; } ;


 union ctl_io* ctl_alloc_io (int ) ;
 struct tpcl_softc tpcl_softc ;

union ctl_io *
tpcl_alloc_io(void)
{
 struct tpcl_softc *tsoftc = &tpcl_softc;

 return (ctl_alloc_io(tsoftc->port.ctl_pool_ref));
}
