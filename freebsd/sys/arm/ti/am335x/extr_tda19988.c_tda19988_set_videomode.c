
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videomode {int dummy; } ;
struct tda19988_softc {int dummy; } ;
typedef int device_t ;


 struct tda19988_softc* device_get_softc (int ) ;
 int tda19988_init_encoder (struct tda19988_softc*,struct videomode const*) ;

__attribute__((used)) static int
tda19988_set_videomode(device_t dev, const struct videomode *mode)
{
 struct tda19988_softc *sc;

 sc = device_get_softc(dev);

 tda19988_init_encoder(sc, mode);

 return (0);
}
