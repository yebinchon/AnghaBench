
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vdev_t ;
typedef int uberblock_t ;


 int VDEV_LABELS ;
 int VDEV_UBERBLOCK_COUNT (int *) ;
 int VDEV_UBERBLOCK_OFFSET (int *,int) ;
 int VDEV_UBERBLOCK_SIZE (int *) ;
 int free (int *) ;
 int * malloc (int ) ;
 scalar_t__ uberblock_verify (int *) ;
 scalar_t__ vdev_label_read (int *,int,int *,int ,int ) ;
 scalar_t__ vdev_uberblock_compare (int *,int *) ;

__attribute__((used)) static void
vdev_uberblock_load(vdev_t *vd, uberblock_t *ub)
{
 uberblock_t *buf;

 buf = malloc(VDEV_UBERBLOCK_SIZE(vd));
 if (buf == ((void*)0))
  return;

 for (int l = 0; l < VDEV_LABELS; l++) {
  for (int n = 0; n < VDEV_UBERBLOCK_COUNT(vd); n++) {
   if (vdev_label_read(vd, l, buf,
       VDEV_UBERBLOCK_OFFSET(vd, n),
       VDEV_UBERBLOCK_SIZE(vd)))
    continue;
   if (uberblock_verify(buf) != 0)
    continue;

   if (vdev_uberblock_compare(buf, ub) > 0)
    *ub = *buf;
  }
 }
 free(buf);
}
