
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct open_file {scalar_t__ f_fsdata; } ;
struct TYPE_3__ {int * val; } ;
struct TYPE_4__ {TYPE_1__ fa_size; } ;
struct nfs_iodesc {int off; TYPE_2__ fa; } ;
typedef int off_t ;


 int EINVAL ;



 int errno ;
 int ntohl (int ) ;

off_t
nfs_seek(struct open_file *f, off_t offset, int where)
{
 struct nfs_iodesc *d = (struct nfs_iodesc *)f->f_fsdata;
 uint32_t size = ntohl(d->fa.fa_size.val[1]);

 switch (where) {
 case 128:
  d->off = offset;
  break;
 case 130:
  d->off += offset;
  break;
 case 129:
  d->off = size - offset;
  break;
 default:
  errno = EINVAL;
  return (-1);
 }

 return (d->off);
}
