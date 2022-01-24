#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* vp_nvlist; } ;
typedef  TYPE_1__ vdev_phys_t ;
typedef  int /*<<< orphan*/  vdev_label_t ;
typedef  scalar_t__ uint64_t ;
struct g_provider {scalar_t__ mediasize; int sectorsize; int /*<<< orphan*/  name; } ;
struct g_consumer {struct g_provider* provider; } ;
typedef  int off_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int BIO_READ ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 scalar_t__ POOL_STATE_L2CACHE ; 
 scalar_t__ POOL_STATE_SPARE ; 
 int VDEV_LABELS ; 
 int VDEV_SKIP_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_POOL_STATE ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_POOL_TXG ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_1__* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC8 (char*,size_t,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct g_consumer*,int*,void**,int*,int*,int*,int) ; 
 int FUNC10 (scalar_t__,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(struct g_consumer *cp, nvlist_t **configp)
{
	struct g_provider *pp;
	nvlist_t *config;
	vdev_phys_t *vdev_lists[VDEV_LABELS];
	char *buf;
	size_t buflen;
	uint64_t psize, state, txg;
	off_t offsets[VDEV_LABELS];
	off_t size;
	off_t sizes[VDEV_LABELS];
	int cmds[VDEV_LABELS];
	int errors[VDEV_LABELS];
	int l, nlabels;

	FUNC3();

	pp = cp->provider;
	FUNC2(1, "Reading config from %s...", pp->name);

	psize = pp->mediasize;
	psize = FUNC1(psize, (uint64_t)sizeof(vdev_label_t));

	size = sizeof(*vdev_lists[0]) + pp->sectorsize -
	    ((sizeof(*vdev_lists[0]) - 1) % pp->sectorsize) - 1;

	buflen = sizeof(vdev_lists[0]->vp_nvlist);

	/* Create all of the IO requests */
	for (l = 0; l < VDEV_LABELS; l++) {
		cmds[l] = BIO_READ;
		vdev_lists[l] = FUNC4(size, KM_SLEEP);
		offsets[l] = FUNC10(psize, l, 0) + VDEV_SKIP_SIZE;
		sizes[l] = size;
		errors[l] = 0;
		FUNC0(offsets[l] % pp->sectorsize == 0);
	}

	/* Issue the IO requests */
	FUNC9(cp, cmds, (void**)vdev_lists, offsets, sizes, errors,
	    VDEV_LABELS);

	/* Parse the labels */
	config = *configp = NULL;
	nlabels = 0;
	for (l = 0; l < VDEV_LABELS; l++) {
		if (errors[l] != 0)
			continue;

		buf = vdev_lists[l]->vp_nvlist;

		if (FUNC8(buf, buflen, &config, 0) != 0)
			continue;

		if (FUNC7(config, ZPOOL_CONFIG_POOL_STATE,
		    &state) != 0 || state > POOL_STATE_L2CACHE) {
			FUNC6(config);
			continue;
		}

		if (state != POOL_STATE_SPARE &&
		    state != POOL_STATE_L2CACHE &&
		    (FUNC7(config, ZPOOL_CONFIG_POOL_TXG,
		    &txg) != 0 || txg == 0)) {
			FUNC6(config);
			continue;
		}

		if (*configp != NULL)
			FUNC6(*configp);
		*configp = config;

		nlabels++;
	}

	/* Free the label storage */
	for (l = 0; l < VDEV_LABELS; l++)
		FUNC5(vdev_lists[l], size);

	return (nlabels);
}