
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct TYPE_4__ {int fatsz; int fatbuf_blknum; int * fatbuf; int fd; int spf; } ;
typedef TYPE_1__ DOS_FS ;


 int EINVAL ;
 int FATBLKSZ ;
 int cv2 (int const*) ;
 int cv4 (int const*) ;
 int dos_read_fatblk (TYPE_1__*,int ,int) ;
 int fatoff (int,int) ;
 int secbyt (int ) ;

__attribute__((used)) static int
fatget(DOS_FS *fs, u_int *c)
{
    u_int val_in, val_out, offset, blknum, nbyte;
    const u_char *p_entry;
    int err;


    val_in = *c;
    if (val_in & 0xf0000000)
        return (EINVAL);


    offset = fatoff(fs->fatsz, val_in);
    nbyte = fs->fatsz != 32 ? 2 : 4;
    if (offset + nbyte > secbyt(fs->spf))
        return (EINVAL);
    blknum = offset / FATBLKSZ;
    offset %= FATBLKSZ;
    if (offset + nbyte > FATBLKSZ)
        return (EINVAL);
    if (blknum != fs->fatbuf_blknum) {
        err = dos_read_fatblk(fs, fs->fd, blknum);
        if (err != 0)
            return (err);
    }
    p_entry = fs->fatbuf + offset;


    switch (fs->fatsz) {
    case 32:
        val_out = cv4(p_entry);
        val_out &= 0x0fffffff;
        break;
    case 16:
        val_out = cv2(p_entry);
        break;
    case 12:
        val_out = cv2(p_entry);
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
