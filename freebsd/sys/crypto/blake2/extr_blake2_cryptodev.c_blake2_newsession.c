
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cryptoini {int cri_alg; struct cryptoini* cri_next; } ;
struct blake2_softc {int lock; scalar_t__ dying; } ;
struct blake2_session {int algo; } ;
typedef int device_t ;
typedef int crypto_session_t ;


 int CRYPTDEB (char*) ;


 int EINVAL ;
 int blake2_cipher_setup (struct blake2_session*,struct cryptoini*) ;
 struct blake2_session* crypto_get_driver_session (int ) ;
 struct blake2_softc* device_get_softc (int ) ;
 int rw_wlock (int *) ;
 int rw_wunlock (int *) ;

__attribute__((used)) static int
blake2_newsession(device_t dev, crypto_session_t cses, struct cryptoini *cri)
{
 struct blake2_softc *sc;
 struct blake2_session *ses;
 struct cryptoini *authini;
 int error;

 if (cri == ((void*)0)) {
  CRYPTDEB("no cri");
  return (EINVAL);
 }

 sc = device_get_softc(dev);

 authini = ((void*)0);
 for (; cri != ((void*)0); cri = cri->cri_next) {
  switch (cri->cri_alg) {
  case 129:
  case 128:
   if (authini != ((void*)0)) {
    CRYPTDEB("authini already set");
    return (EINVAL);
   }
   authini = cri;
   break;
  default:
   CRYPTDEB("unhandled algorithm");
   return (EINVAL);
  }
 }
 if (authini == ((void*)0)) {
  CRYPTDEB("no cipher");
  return (EINVAL);
 }

 rw_wlock(&sc->lock);
 if (sc->dying) {
  rw_wunlock(&sc->lock);
  return (EINVAL);
 }
 rw_wunlock(&sc->lock);

 ses = crypto_get_driver_session(cses);

 ses->algo = authini->cri_alg;
 error = blake2_cipher_setup(ses, authini);
 if (error != 0) {
  CRYPTDEB("setup failed");
  return (error);
 }

 return (0);
}
