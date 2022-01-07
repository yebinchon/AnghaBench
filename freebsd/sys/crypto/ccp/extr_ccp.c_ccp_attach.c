
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccp_softc {scalar_t__ cid; int hw_features; int lock; int dev; } ;
struct ccp_session {int dummy; } ;
typedef int device_t ;


 int CRYPTOCAP_F_HARDWARE ;
 int CRYPTO_AES_128_NIST_GMAC ;
 int CRYPTO_AES_192_NIST_GMAC ;
 int CRYPTO_AES_256_NIST_GMAC ;
 int CRYPTO_AES_CBC ;
 int CRYPTO_AES_ICM ;
 int CRYPTO_AES_NIST_GCM_16 ;
 int CRYPTO_AES_XTS ;
 int CRYPTO_SHA1_HMAC ;
 int CRYPTO_SHA2_256_HMAC ;
 int CRYPTO_SHA2_384_HMAC ;
 int CRYPTO_SHA2_512_HMAC ;
 int ENXIO ;
 int MTX_DEF ;
 int VERSION_CAP_AES ;
 int VERSION_CAP_SHA ;
 int VERSION_CAP_TRNG ;
 int ccp_hw_attach (int ) ;
 int ccp_initialize_queues (struct ccp_softc*) ;
 scalar_t__ crypto_get_driverid (int ,int,int ) ;
 int crypto_register (scalar_t__,int ,int ,int ) ;
 struct ccp_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 struct ccp_softc* g_ccp_softc ;
 int mtx_init (int *,char*,int *,int ) ;
 int random_ccp ;
 int random_source_register (int *) ;

__attribute__((used)) static int
ccp_attach(device_t dev)
{
 struct ccp_softc *sc;
 int error;

 sc = device_get_softc(dev);
 sc->dev = dev;

 sc->cid = crypto_get_driverid(dev, sizeof(struct ccp_session),
     CRYPTOCAP_F_HARDWARE);
 if (sc->cid < 0) {
  device_printf(dev, "could not get crypto driver id\n");
  return (ENXIO);
 }

 error = ccp_hw_attach(dev);
 if (error != 0)
  return (error);

 mtx_init(&sc->lock, "ccp", ((void*)0), MTX_DEF);

 ccp_initialize_queues(sc);

 if (g_ccp_softc == ((void*)0)) {
  g_ccp_softc = sc;
  if ((sc->hw_features & VERSION_CAP_TRNG) != 0)
   random_source_register(&random_ccp);
 }

 if ((sc->hw_features & VERSION_CAP_AES) != 0) {
  crypto_register(sc->cid, CRYPTO_AES_CBC, 0, 0);
  crypto_register(sc->cid, CRYPTO_AES_ICM, 0, 0);
  crypto_register(sc->cid, CRYPTO_AES_NIST_GCM_16, 0, 0);
  crypto_register(sc->cid, CRYPTO_AES_128_NIST_GMAC, 0, 0);
  crypto_register(sc->cid, CRYPTO_AES_192_NIST_GMAC, 0, 0);
  crypto_register(sc->cid, CRYPTO_AES_256_NIST_GMAC, 0, 0);
  crypto_register(sc->cid, CRYPTO_AES_XTS, 0, 0);
 }
 if ((sc->hw_features & VERSION_CAP_SHA) != 0) {
  crypto_register(sc->cid, CRYPTO_SHA1_HMAC, 0, 0);
  crypto_register(sc->cid, CRYPTO_SHA2_256_HMAC, 0, 0);
  crypto_register(sc->cid, CRYPTO_SHA2_384_HMAC, 0, 0);
  crypto_register(sc->cid, CRYPTO_SHA2_512_HMAC, 0, 0);
 }

 return (0);
}
