
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdvi_softc {int dummy; } ;
typedef int device_t ;


 int amdvi_teardown_hw (struct amdvi_softc*) ;
 struct amdvi_softc* device_get_softc (int ) ;

__attribute__((used)) static int
ivhd_detach(device_t dev)
{
 struct amdvi_softc *softc;

 softc = device_get_softc(dev);

 amdvi_teardown_hw(softc);





 return (0);
}
