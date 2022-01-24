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
struct cryptoini {int cri_alg; struct cryptoini* cri_next; } ;
struct blake2_softc {int /*<<< orphan*/  lock; scalar_t__ dying; } ;
struct blake2_session {int algo; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  crypto_session_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  CRYPTO_BLAKE2B 129 
#define  CRYPTO_BLAKE2S 128 
 int EINVAL ; 
 int FUNC1 (struct blake2_session*,struct cryptoini*) ; 
 struct blake2_session* FUNC2 (int /*<<< orphan*/ ) ; 
 struct blake2_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(device_t dev, crypto_session_t cses, struct cryptoini *cri)
{
	struct blake2_softc *sc;
	struct blake2_session *ses;
	struct cryptoini *authini;
	int error;

	if (cri == NULL) {
		FUNC0("no cri");
		return (EINVAL);
	}

	sc = FUNC3(dev);

	authini = NULL;
	for (; cri != NULL; cri = cri->cri_next) {
		switch (cri->cri_alg) {
		case CRYPTO_BLAKE2B:
		case CRYPTO_BLAKE2S:
			if (authini != NULL) {
				FUNC0("authini already set");
				return (EINVAL);
			}
			authini = cri;
			break;
		default:
			FUNC0("unhandled algorithm");
			return (EINVAL);
		}
	}
	if (authini == NULL) {
		FUNC0("no cipher");
		return (EINVAL);
	}

	FUNC4(&sc->lock);
	if (sc->dying) {
		FUNC5(&sc->lock);
		return (EINVAL);
	}
	FUNC5(&sc->lock);

	ses = FUNC2(cses);

	ses->algo = authini->cri_alg;
	error = FUNC1(ses, authini);
	if (error != 0) {
		FUNC0("setup failed");
		return (error);
	}

	return (0);
}