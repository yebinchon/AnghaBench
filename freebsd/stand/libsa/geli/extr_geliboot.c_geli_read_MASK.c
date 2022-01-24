#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint64_t ;
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_3__ {size_t sc_sectorsize; int /*<<< orphan*/  sc_ekeylen; int /*<<< orphan*/  sc_ealgo; } ;
struct geli_dev {TYPE_1__ sc; } ;
struct g_eli_key {int /*<<< orphan*/  gek_key; } ;
typedef  size_t off_t ;
typedef  int /*<<< orphan*/  gkey ;

/* Variables and functions */
 int G_ELI_IVKEYLEN ; 
 size_t G_ELI_KEY_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct g_eli_key*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,size_t,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct g_eli_key*,size_t) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int
FUNC5(struct geli_dev *gdev, off_t offset, u_char *buf, size_t bytes)
{
	u_char iv[G_ELI_IVKEYLEN];
	u_char *pbuf;
	int error;
	off_t dstoff;
	uint64_t keyno;
	size_t n, nsec, secsize;
	struct g_eli_key gkey;

	pbuf = buf;

	secsize = gdev->sc.sc_sectorsize;
	nsec = bytes / secsize;
	if (nsec == 0) {
		/*
		 * A read of less than the GELI sector size has been
		 * requested. The caller provided destination buffer may
		 * not be big enough to boost the read to a full sector,
		 * so just attempt to decrypt the truncated sector.
		 */
		secsize = bytes;
		nsec = 1;
	}

	for (n = 0, dstoff = offset; n < nsec; n++, dstoff += secsize) {

		FUNC1(&gdev->sc, dstoff, iv, G_ELI_IVKEYLEN);

		/* Get the key that corresponds to this offset. */
		keyno = (dstoff >> G_ELI_KEY_SHIFT) / secsize;
		FUNC2(&gdev->sc, &gkey, keyno);

		error = FUNC3(gdev->sc.sc_ealgo, 0, pbuf, secsize,
		    gkey.gek_key, gdev->sc.sc_ekeylen, iv);

		if (error != 0) {
			FUNC0(&gkey, sizeof(gkey));
			FUNC4("Failed to decrypt in geli_read()!");
			return (error);
		}
		pbuf += secsize;
	}
	FUNC0(&gkey, sizeof(gkey));
	return (0);
}