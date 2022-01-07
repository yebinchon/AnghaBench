
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct split_file {int tot_pos; int file_pos; int curfd; } ;
struct open_file {scalar_t__ f_fsdata; } ;
typedef int off_t ;


 scalar_t__ EINVAL ;
 scalar_t__ ENOMEM ;
 int SEEK_BUF ;



 scalar_t__ errno ;
 int free (void*) ;
 int lseek (int ,int,int const) ;
 void* malloc (int ) ;
 size_t min (int,int ) ;
 int panic (char*) ;
 scalar_t__ splitfs_read (struct open_file*,void*,size_t,size_t*) ;

__attribute__((used)) static off_t
splitfs_seek(struct open_file *f, off_t offset, int where)
{
    int nread;
    size_t resid;
    off_t new_pos, seek_by;
    struct split_file *sf;

    sf = (struct split_file *)f->f_fsdata;

    seek_by = offset;
    switch (where) {
    case 128:
 seek_by -= sf->tot_pos;
 break;
    case 130:
 break;
    case 129:
 panic("splitfs_seek: SEEK_END not supported");
 break;
    default:
 errno = EINVAL;
 return (-1);
    }

    if (seek_by > 0) {





 void *tmp;

 tmp = malloc(SEEK_BUF);
 if (tmp == ((void*)0)) {
     errno = ENOMEM;
     return (-1);
 }

 nread = 0;
 for (; seek_by > 0; seek_by -= nread) {
     resid = 0;
     errno = splitfs_read(f, tmp, min(seek_by, SEEK_BUF), &resid);
     nread = min(seek_by, SEEK_BUF) - resid;
     if ((errno != 0) || (nread == 0))

  break;
 }
 free(tmp);
 if (errno != 0)
     return (-1);
    }

    if (seek_by != 0) {

 if (sf->file_pos + seek_by < 0)
     panic("splitfs_seek: can't seek past the beginning of the slice");
 new_pos = lseek(sf->curfd, seek_by, 130);
 if (new_pos < 0) {
     errno = EINVAL;
     return (-1);
 }
 sf->tot_pos += new_pos - sf->file_pos;
 sf->file_pos = new_pos;
    }

    return (sf->tot_pos);
}
