#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_6__ {TYPE_2__** spa_ddt; int /*<<< orphan*/  spa_ddt_stat_object; int /*<<< orphan*/  spa_meta_objset; } ;
typedef  TYPE_1__ spa_t ;
typedef  enum zio_checksum { ____Placeholder_zio_checksum } zio_checksum ;
typedef  enum ddt_type { ____Placeholder_ddt_type } ddt_type ;
typedef  enum ddt_class { ____Placeholder_ddt_class } ddt_class ;
struct TYPE_7__ {int /*<<< orphan*/  ddt_histogram_cache; int /*<<< orphan*/  ddt_histogram; } ;
typedef  TYPE_2__ ddt_t ;

/* Variables and functions */
 int DDT_CLASSES ; 
 int DDT_TYPES ; 
 int /*<<< orphan*/  DMU_POOL_DDT_STATS ; 
 int /*<<< orphan*/  DMU_POOL_DIRECTORY_OBJECT ; 
 int ENOENT ; 
 int ZIO_CHECKSUM_FUNCTIONS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_2__*,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 

int
FUNC4(spa_t *spa)
{
	int error;

	FUNC1(spa);

	error = FUNC3(spa->spa_meta_objset, DMU_POOL_DIRECTORY_OBJECT,
	    DMU_POOL_DDT_STATS, sizeof (uint64_t), 1,
	    &spa->spa_ddt_stat_object);

	if (error)
		return (error == ENOENT ? 0 : error);

	for (enum zio_checksum c = 0; c < ZIO_CHECKSUM_FUNCTIONS; c++) {
		ddt_t *ddt = spa->spa_ddt[c];
		for (enum ddt_type type = 0; type < DDT_TYPES; type++) {
			for (enum ddt_class class = 0; class < DDT_CLASSES;
			    class++) {
				error = FUNC2(ddt, type, class);
				if (error != 0 && error != ENOENT)
					return (error);
			}
		}

		/*
		 * Seed the cached histograms.
		 */
		FUNC0(ddt->ddt_histogram, &ddt->ddt_histogram_cache,
		    sizeof (ddt->ddt_histogram));
	}

	return (0);
}