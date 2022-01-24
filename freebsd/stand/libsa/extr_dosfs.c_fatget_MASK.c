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
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_4__ {int fatsz; int fatbuf_blknum; int /*<<< orphan*/ * fatbuf; int /*<<< orphan*/  fd; int /*<<< orphan*/  spf; } ;
typedef  TYPE_1__ DOS_FS ;

/* Variables and functions */
 int EINVAL ; 
 int FATBLKSZ ; 
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(DOS_FS *fs, u_int *c)
{
    u_int val_in, val_out, offset, blknum, nbyte;
    const u_char *p_entry;
    int err;

    /* check input value to prevent overflow in fatoff() */
    val_in = *c;
    if (val_in & 0xf0000000)
        return (EINVAL);

    /* ensure that current 128K FAT block is cached */
    offset = FUNC3(fs->fatsz, val_in);
    nbyte = fs->fatsz != 32 ? 2 : 4;
    if (offset + nbyte > FUNC4(fs->spf))
        return (EINVAL);
    blknum = offset / FATBLKSZ;
    offset %= FATBLKSZ;
    if (offset + nbyte > FATBLKSZ)
        return (EINVAL);
    if (blknum != fs->fatbuf_blknum) {
        err = FUNC2(fs, fs->fd, blknum);
        if (err != 0)
            return (err);
    }
    p_entry = fs->fatbuf + offset;

    /* extract cluster number from FAT entry */
    switch (fs->fatsz) {
    case 32:
        val_out = FUNC1(p_entry);
        val_out &= 0x0fffffff;
        break;
    case 16:
        val_out = FUNC0(p_entry);
        break;
    case 12:
        val_out = FUNC0(p_entry);
        if (val_in & 1)
            val_out >>= 4;
        else
            val_out &= 0xfff;
        break;
    default:
        return (EINVAL);
    }
    *c = val_out;
    return (0);
}