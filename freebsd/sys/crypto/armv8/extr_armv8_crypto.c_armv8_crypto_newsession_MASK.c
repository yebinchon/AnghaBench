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
struct armv8_crypto_softc {int /*<<< orphan*/  lock; scalar_t__ dieing; } ;
struct armv8_crypto_session {int algo; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  crypto_session_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  CRYPTO_AES_CBC 128 
 int EINVAL ; 
 int FUNC1 (struct armv8_crypto_session*,struct cryptoini*) ; 
 struct armv8_crypto_session* FUNC2 (int /*<<< orphan*/ ) ; 
 struct armv8_crypto_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(device_t dev, crypto_session_t cses,
    struct cryptoini *cri)
{
	struct armv8_crypto_softc *sc;
	struct armv8_crypto_session *ses;
	struct cryptoini *encini;
	int error;

	if (cri == NULL) {
		FUNC0("no cri");
		return (EINVAL);
	}

	sc = FUNC3(dev);
	if (sc->dieing)
		return (EINVAL);

	ses = NULL;
	encini = NULL;
	for (; cri != NULL; cri = cri->cri_next) {
		switch (cri->cri_alg) {
		case CRYPTO_AES_CBC:
			if (encini != NULL) {
				FUNC0("encini already set");
				return (EINVAL);
			}
			encini = cri;
			break;
		default:
			FUNC0("unhandled algorithm");
			return (EINVAL);
		}
	}
	if (encini == NULL) {
		FUNC0("no cipher");
		return (EINVAL);
	}

	FUNC4(&sc->lock);
	if (sc->dieing) {
		FUNC5(&sc->lock);
		return (EINVAL);
	}

	ses = FUNC2(cses);
	ses->algo = encini->cri_alg;

	error = FUNC1(ses, encini);
	if (error != 0) {
		FUNC0("setup failed");
		FUNC5(&sc->lock);
		return (error);
	}

	FUNC5(&sc->lock);
	return (0);
}