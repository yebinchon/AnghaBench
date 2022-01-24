#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct g_consumer {TYPE_1__* provider; } ;
struct bio {int bio_cmd; int bio_offset; int /*<<< orphan*/ * bio_data; int /*<<< orphan*/  bio_length; int /*<<< orphan*/ * bio_done; } ;
typedef  int off_t ;
struct TYPE_2__ {int sectorsize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int MAXPHYS ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (struct bio*,char*) ; 
 struct bio* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*,struct g_consumer*) ; 
 int /*<<< orphan*/  FUNC6 (struct bio**,size_t) ; 
 struct bio** FUNC7 (size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct g_consumer *cp, int *cmds, void **datas, off_t *offsets,
    off_t *sizes, int *errors, int ncmds)
{
	struct bio **bios;
	u_char *p;
	off_t off, maxio, s, end;
	int i, n_bios, j;
	size_t bios_size;

	maxio = MAXPHYS - (MAXPHYS % cp->provider->sectorsize);
	n_bios = 0;

	/* How many bios are required for all commands ? */
	for (i = 0; i < ncmds; i++)
		n_bios += (sizes[i] + maxio - 1) / maxio;

	/* Allocate memory for the bios */
	bios_size = n_bios * sizeof(struct bio*);
	bios = FUNC7(bios_size, KM_SLEEP);

	/* Prepare and issue all of the bios */
	for (i = j = 0; i < ncmds; i++) {
		off = offsets[i];
		p = datas[i];
		s = sizes[i];
		end = off + s;
		FUNC0((off % cp->provider->sectorsize) == 0);
		FUNC0((s % cp->provider->sectorsize) == 0);

		for (; off < end; off += maxio, p += maxio, s -= maxio, j++) {
			bios[j] = FUNC3();
			bios[j]->bio_cmd = cmds[i];
			bios[j]->bio_done = NULL;
			bios[j]->bio_offset = off;
			bios[j]->bio_length = FUNC1(s, maxio);
			bios[j]->bio_data = p;
			FUNC5(bios[j], cp);
		}
	}
	FUNC0(j == n_bios);

	/* Wait for all of the bios to complete, and clean them up */
	for (i = j = 0; i < ncmds; i++) {
		off = offsets[i];
		s = sizes[i];
		end = off + s;

		for (; off < end; off += maxio, s -= maxio, j++) {
			errors[i] = FUNC2(bios[j], "vdev_geom_io") || errors[i];
			FUNC4(bios[j]);
		}
	}
	FUNC6(bios, bios_size);
}