
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct open_file {int f_flags; int f_offset; scalar_t__ f_ralen; TYPE_1__* f_ops; int f_raoffset; } ;
typedef int off_t ;
struct TYPE_2__ {int (* fo_seek ) (struct open_file*,int,int const) ;} ;


 int EBADF ;
 int EINVAL ;
 int EOFFSET ;
 int F_RAW ;

 int SEEK_END ;

 unsigned int SOPEN_MAX ;
 int errno ;
 struct open_file* files ;
 int stub1 (struct open_file*,int,int const) ;
 int stub2 (struct open_file*,int,int) ;

off_t
lseek(int fd, off_t offset, int where)
{
    off_t bufpos, filepos, target;
    struct open_file *f = &files[fd];

    if ((unsigned)fd >= SOPEN_MAX || f->f_flags == 0) {
 errno = EBADF;
 return (-1);
    }

    if (f->f_flags & F_RAW) {



 switch (where) {
 case 128:
     f->f_offset = offset;
     break;
 case 129:
     f->f_offset += offset;
     break;
 default:
     errno = EOFFSET;
     return (-1);
 }
 return (f->f_offset);
    }
    if (f->f_ralen != 0 && where != SEEK_END) {
 if ((filepos = (f->f_ops->fo_seek)(f, (off_t)0, 129)) == -1)
     return (-1);
 bufpos = filepos - f->f_ralen;
 switch (where) {
 case 128:
     target = offset;
     break;
 case 129:
     target = bufpos + offset;
     break;
 default:
     errno = EINVAL;
     return (-1);
 }
 if (bufpos <= target && target < filepos) {
     f->f_raoffset += target - bufpos;
     f->f_ralen -= target - bufpos;
     return (target);
 }
    }






    if (where == 129)
 offset -= f->f_ralen;




    f->f_ralen = 0;

    return (f->f_ops->fo_seek)(f, offset, where);
}
