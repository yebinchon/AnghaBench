
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u_int ;
struct open_file {int dummy; } ;
typedef size_t daddr_t ;
struct TYPE_3__ {void* fatbuf_blknum; int fatbuf; scalar_t__ lsnfat; int spf; } ;
typedef TYPE_1__ DOS_FS ;


 size_t FATBLKSZ ;
 scalar_t__ bytsec (size_t) ;
 int ioget (struct open_file*,scalar_t__,int ,size_t) ;
 int memset (int ,int ,size_t) ;
 size_t secbyt (int ) ;

__attribute__((used)) static int
dos_read_fatblk(DOS_FS *fs, struct open_file *fd, u_int blknum)
{
    int err;
    size_t io_size;
    daddr_t offset_in_fat, max_offset_in_fat;

    offset_in_fat = ((daddr_t)blknum) * FATBLKSZ;
    max_offset_in_fat = secbyt(fs->spf);
    io_size = FATBLKSZ;
    if (offset_in_fat > max_offset_in_fat)
        offset_in_fat = max_offset_in_fat;
    if (offset_in_fat + io_size > max_offset_in_fat)
        io_size = ((size_t)(max_offset_in_fat - offset_in_fat));

    if (io_size != 0) {
        err = ioget(fd, fs->lsnfat + bytsec(offset_in_fat),
            fs->fatbuf, io_size);
        if (err != 0) {
            fs->fatbuf_blknum = ((u_int)(-1));
            return (err);
        }
    }
    if (io_size < FATBLKSZ)
        memset(fs->fatbuf + io_size, 0, FATBLKSZ - io_size);

    fs->fatbuf_blknum = blknum;
    return (0);
}
