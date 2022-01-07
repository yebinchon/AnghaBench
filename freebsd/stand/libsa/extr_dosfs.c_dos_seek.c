
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct open_file {scalar_t__ f_fsdata; } ;
typedef int off_t ;
struct TYPE_3__ {int size; } ;
struct TYPE_4__ {int offset; scalar_t__ c; TYPE_1__ de; } ;
typedef TYPE_2__ DOS_FILE ;


 int EINVAL ;



 int cv4 (int ) ;
 int errno ;

__attribute__((used)) static off_t
dos_seek(struct open_file *fd, off_t offset, int whence)
{
    off_t off;
    u_int size;
    DOS_FILE *f = (DOS_FILE *)fd->f_fsdata;

    size = cv4(f->de.size);
    switch (whence) {
    case 128:
        off = 0;
        break;
    case 130:
        off = f->offset;
        break;
    case 129:
        off = size;
        break;
    default:
 errno = EINVAL;
 return (-1);
    }
    off += offset;
    if (off < 0 || off > size) {
 errno = EINVAL;
        return (-1);
    }
    f->offset = (u_int)off;
    f->c = 0;
    return (off);
}
