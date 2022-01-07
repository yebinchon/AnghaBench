
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct padlock_softc {int dummy; } ;
struct padlock_session {int dummy; } ;
typedef int device_t ;
typedef int crypto_session_t ;


 struct padlock_session* crypto_get_driver_session (int ) ;
 struct padlock_softc* device_get_softc (int ) ;
 int padlock_freesession_one (struct padlock_softc*,struct padlock_session*) ;

__attribute__((used)) static void
padlock_freesession(device_t dev, crypto_session_t cses)
{
 struct padlock_softc *sc = device_get_softc(dev);
 struct padlock_session *ses;

 ses = crypto_get_driver_session(cses);
 padlock_freesession_one(sc, ses);
}
