
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
typedef int u_int16_t ;
typedef int off_t ;
struct TYPE_3__ {int fp; int BSIZE; int BSHIFT; scalar_t__ LORDER; } ;
typedef TYPE_1__ HTAB ;


 int BUCKET_TO_PAGE (int ) ;
 scalar_t__ BYTE_ORDER ;
 int EFTYPE ;
 int M_16_SWAP (int) ;
 int M_32_SWAP (int) ;
 int OADDR_TO_PAGE (int ) ;
 int PAGE_INIT (char*) ;
 int errno ;
 int pread (int,char*,int,int) ;

int
__get_page(HTAB *hashp, char *p, u_int32_t bucket, int is_bucket, int is_disk,
    int is_bitmap)
{
 int fd, page, size, rsize;
 u_int16_t *bp;

 fd = hashp->fp;
 size = hashp->BSIZE;

 if ((fd == -1) || !is_disk) {
  PAGE_INIT(p);
  return (0);
 }
 if (is_bucket)
  page = BUCKET_TO_PAGE(bucket);
 else
  page = OADDR_TO_PAGE(bucket);
 if ((rsize = pread(fd, p, size, (off_t)page << hashp->BSHIFT)) == -1)
  return (-1);
 bp = (u_int16_t *)p;
 if (!rsize)
  bp[0] = 0;
 else
  if (rsize != size) {
   errno = EFTYPE;
   return (-1);
  }
 if (!is_bitmap && !bp[0]) {
  PAGE_INIT(p);
 } else
  if (hashp->LORDER != BYTE_ORDER) {
   int i, max;

   if (is_bitmap) {
    max = hashp->BSIZE >> 2;
    for (i = 0; i < max; i++)
     M_32_SWAP(((int *)p)[i]);
   } else {
    M_16_SWAP(bp[0]);
    max = bp[0] + 2;
    for (i = 1; i <= max; i++)
     M_16_SWAP(bp[i]);
   }
  }
 return (0);
}
