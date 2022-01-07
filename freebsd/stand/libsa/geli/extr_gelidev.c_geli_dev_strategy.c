
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct geli_devdesc {TYPE_5__* gdev; TYPE_4__* hdesc; } ;
typedef size_t off_t ;
typedef size_t daddr_t ;
struct TYPE_6__ {scalar_t__ md_sectorsize; } ;
struct TYPE_10__ {TYPE_1__ md; } ;
struct TYPE_8__ {TYPE_2__* d_dev; } ;
struct TYPE_9__ {TYPE_3__ dd; } ;
struct TYPE_7__ {int (* dv_strategy ) (TYPE_4__*,int,size_t,size_t,char*,int *) ;} ;


 size_t DEV_BSIZE ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int F_MASK ;
 int F_READ ;
 int free (char*) ;
 int geli_read (TYPE_5__*,size_t,char*,size_t) ;
 char* malloc (size_t) ;
 int memcpy (char*,char*,size_t) ;
 size_t rounddown2 (size_t,int) ;
 size_t roundup2 (size_t,int) ;
 int stub1 (TYPE_4__*,int,size_t,size_t,char*,int *) ;

__attribute__((used)) static int
geli_dev_strategy(void *devdata, int rw, daddr_t blk, size_t size, char *buf,
    size_t *rsize)
{
 struct geli_devdesc *gdesc;
 off_t alnend, alnstart, reqend, reqstart;
 size_t alnsize;
 char *iobuf;
 int rc;


 if ((rw & F_MASK) != F_READ)
  return (EOPNOTSUPP);

 gdesc = (struct geli_devdesc *)devdata;
 reqstart = blk * DEV_BSIZE;
 reqend = reqstart + size;
 alnstart = rounddown2(reqstart, (int)gdesc->gdev->md.md_sectorsize);
 alnend = roundup2(reqend, (int)gdesc->gdev->md.md_sectorsize);
 alnsize = alnend - alnstart;





 if (alnsize <= size)
  iobuf = buf;
 else if ((iobuf = malloc(alnsize)) == ((void*)0))
  return (ENOMEM);




 rc = gdesc->hdesc->dd.d_dev->dv_strategy(gdesc->hdesc, rw,
     alnstart / DEV_BSIZE, alnsize, iobuf, ((void*)0));
 if (rc != 0)
  goto out;
 rc = geli_read(gdesc->gdev, alnstart, iobuf, alnsize);
 if (rc != 0)
  goto out;





 if (iobuf != buf)
  memcpy(buf, iobuf + (reqstart - alnstart), size);

 if (rsize != ((void*)0))
  *rsize = size;
out:
 if (iobuf != buf)
  free(iobuf);

 return (rc);
}
