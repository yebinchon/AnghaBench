
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int size; scalar_t__ start; } ;
struct zfsdsk {TYPE_1__ dsk; } ;


 int DEV_BSIZE ;
 int drvsize_ext (struct zfsdsk*) ;

uint64_t
ldi_get_size(void *priv)
{
 struct zfsdsk *zdsk = priv;
 uint64_t size = zdsk->dsk.size;

 if (zdsk->dsk.start == 0)
  size = drvsize_ext(zdsk);

 return (size * DEV_BSIZE);
}
