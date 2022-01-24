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
typedef  int uint32_t ;
typedef  int u_int ;
struct bcm2835_rng_softc {int* sc_buf; int sc_stall_count; int /*<<< orphan*/  sc_rngto; int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  KTR_DEV ; 
 int /*<<< orphan*/  RANDOM_PURE_BROADCOM ; 
 int RND_VAL_MASK ; 
 int RND_VAL_SHIFT ; 
 int /*<<< orphan*/  RNG_CALLOUT_TICKS ; 
 int /*<<< orphan*/  RNG_DATA ; 
 int /*<<< orphan*/  RNG_STATUS ; 
 int FUNC1 (struct bcm2835_rng_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm2835_rng_softc*,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bcm2835_rng_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct bcm2835_rng_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct bcm2835_rng_softc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct bcm2835_rng_softc*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(void *arg)
{
	uint32_t *dest;
	uint32_t status;
	u_int cnt, nread, num_avail, num_words;
	int seen_underrun, num_stalls;
	struct bcm2835_rng_softc *sc = arg;

	dest = sc->sc_buf;
	nread = num_words = 0;
	seen_underrun = num_stalls = 0;
	for (cnt = sizeof(sc->sc_buf) / sizeof(uint32_t); cnt > 0;
	    cnt -= num_words) {
		/* Read status register to find out how many words available */
		status = FUNC1(sc, RNG_STATUS);
		num_avail = (status >> RND_VAL_SHIFT) & RND_VAL_MASK;

		/* If we have none... */
		if (num_avail == 0) {
			FUNC4(sc);
			if (++seen_underrun >= sc->sc_stall_count) {
				if (num_stalls++ > 0) {
					FUNC8(sc->sc_dev,
					    "RNG stalled, disabling device\n");
					FUNC5(sc);
					break;
				} else {
					FUNC8(sc->sc_dev,
					    "Too many underruns, resetting\n");
					FUNC5(sc);
					FUNC3(sc);
					seen_underrun = 0;
				}
			}
			/* Try again */
			continue;
		}

		FUNC0(KTR_DEV, "%s: %d words available in RNG FIFO",
		    FUNC7(sc->sc_dev), num_avail);

		/* Pull MIN(num_avail, cnt) words from the FIFO */
		num_words = (num_avail > cnt) ? cnt : num_avail;
		FUNC2(sc, RNG_DATA, dest,
		    num_words);
		dest += num_words;
		nread += num_words;
	}

	cnt = nread * sizeof(uint32_t);
	if (cnt > 0)
		FUNC9(sc->sc_buf, cnt, RANDOM_PURE_BROADCOM);

	FUNC6(&sc->sc_rngto, RNG_CALLOUT_TICKS, bcm2835_rng_harvest, sc);
}