#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ccp_softc {scalar_t__ cid; int hw_features; int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; } ;
struct ccp_session {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTOCAP_F_HARDWARE ; 
 int /*<<< orphan*/  CRYPTO_AES_128_NIST_GMAC ; 
 int /*<<< orphan*/  CRYPTO_AES_192_NIST_GMAC ; 
 int /*<<< orphan*/  CRYPTO_AES_256_NIST_GMAC ; 
 int /*<<< orphan*/  CRYPTO_AES_CBC ; 
 int /*<<< orphan*/  CRYPTO_AES_ICM ; 
 int /*<<< orphan*/  CRYPTO_AES_NIST_GCM_16 ; 
 int /*<<< orphan*/  CRYPTO_AES_XTS ; 
 int /*<<< orphan*/  CRYPTO_SHA1_HMAC ; 
 int /*<<< orphan*/  CRYPTO_SHA2_256_HMAC ; 
 int /*<<< orphan*/  CRYPTO_SHA2_384_HMAC ; 
 int /*<<< orphan*/  CRYPTO_SHA2_512_HMAC ; 
 int ENXIO ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int VERSION_CAP_AES ; 
 int VERSION_CAP_SHA ; 
 int VERSION_CAP_TRNG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ccp_softc*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ccp_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 struct ccp_softc* g_ccp_softc ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  random_ccp ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct ccp_softc *sc;
	int error;

	sc = FUNC4(dev);
	sc->dev = dev;

	sc->cid = FUNC2(dev, sizeof(struct ccp_session),
	    CRYPTOCAP_F_HARDWARE);
	if (sc->cid < 0) {
		FUNC5(dev, "could not get crypto driver id\n");
		return (ENXIO);
	}

	error = FUNC0(dev);
	if (error != 0)
		return (error);

	FUNC6(&sc->lock, "ccp", NULL, MTX_DEF);

	FUNC1(sc);

	if (g_ccp_softc == NULL) {
		g_ccp_softc = sc;
		if ((sc->hw_features & VERSION_CAP_TRNG) != 0)
			FUNC7(&random_ccp);
	}

	if ((sc->hw_features & VERSION_CAP_AES) != 0) {
		FUNC3(sc->cid, CRYPTO_AES_CBC, 0, 0);
		FUNC3(sc->cid, CRYPTO_AES_ICM, 0, 0);
		FUNC3(sc->cid, CRYPTO_AES_NIST_GCM_16, 0, 0);
		FUNC3(sc->cid, CRYPTO_AES_128_NIST_GMAC, 0, 0);
		FUNC3(sc->cid, CRYPTO_AES_192_NIST_GMAC, 0, 0);
		FUNC3(sc->cid, CRYPTO_AES_256_NIST_GMAC, 0, 0);
		FUNC3(sc->cid, CRYPTO_AES_XTS, 0, 0);
	}
	if ((sc->hw_features & VERSION_CAP_SHA) != 0) {
		FUNC3(sc->cid, CRYPTO_SHA1_HMAC, 0, 0);
		FUNC3(sc->cid, CRYPTO_SHA2_256_HMAC, 0, 0);
		FUNC3(sc->cid, CRYPTO_SHA2_384_HMAC, 0, 0);
		FUNC3(sc->cid, CRYPTO_SHA2_512_HMAC, 0, 0);
	}

	return (0);
}