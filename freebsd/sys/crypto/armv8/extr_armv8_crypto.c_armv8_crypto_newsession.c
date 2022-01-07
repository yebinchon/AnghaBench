
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cryptoini {int cri_alg; struct cryptoini* cri_next; } ;
struct armv8_crypto_softc {int lock; scalar_t__ dieing; } ;
struct armv8_crypto_session {int algo; } ;
typedef int device_t ;
typedef int crypto_session_t ;


 int CRYPTDEB (char*) ;

 int EINVAL ;
 int armv8_crypto_cipher_setup (struct armv8_crypto_session*,struct cryptoini*) ;
 struct armv8_crypto_session* crypto_get_driver_session (int ) ;
 struct armv8_crypto_softc* device_get_softc (int ) ;
 int rw_wlock (int *) ;
 int rw_wunlock (int *) ;

__attribute__((used)) static int
armv8_crypto_newsession(device_t dev, crypto_session_t cses,
    struct cryptoini *cri)
{
 struct armv8_crypto_softc *sc;
 struct armv8_crypto_session *ses;
 struct cryptoini *encini;
 int error;

 if (cri == ((void*)0)) {
  CRYPTDEB("no cri");
  return (EINVAL);
 }

 sc = device_get_softc(dev);
 if (sc->dieing)
  return (EINVAL);

 ses = ((void*)0);
 encini = ((void*)0);
 for (; cri != ((void*)0); cri = cri->cri_next) {
  switch (cri->cri_alg) {
  case 128:
   if (encini != ((void*)0)) {
    CRYPTDEB("encini already set");
    return (EINVAL);
   }
   encini = cri;
   break;
  default:
   CRYPTDEB("unhandled algorithm");
   return (EINVAL);
  }
 }
 if (encini == ((void*)0)) {
  CRYPTDEB("no cipher");
  return (EINVAL);
 }

 rw_wlock(&sc->lock);
 if (sc->dieing) {
  rw_wunlock(&sc->lock);
  return (EINVAL);
 }

 ses = crypto_get_driver_session(cses);
 ses->algo = encini->cri_alg;

 error = armv8_crypto_cipher_setup(ses, encini);
 if (error != 0) {
  CRYPTDEB("setup failed");
  rw_wunlock(&sc->lock);
  return (error);
 }

 rw_wunlock(&sc->lock);
 return (0);
}
