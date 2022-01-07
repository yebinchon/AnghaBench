
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int zv_queue; int zv_queue_mtx; int zv_objset; int zv_zilog; } ;
typedef TYPE_2__ zvol_state_t ;
typedef int uint64_t ;
struct bio {int bio_cmd; int bio_attribute; TYPE_1__* bio_to; } ;
typedef int spa_t ;
typedef int boolean_t ;
struct TYPE_3__ {TYPE_2__* private; } ;


 int ASSERT (int ) ;





 int DEV_BSIZE ;
 int EOPNOTSUPP ;
 int THREAD_CAN_SLEEP () ;
 int ZVOL_OBJ ;
 int * bioq_first (int *) ;
 int bioq_insert_tail (int *,struct bio*) ;
 int * dmu_objset_spa (int ) ;
 int dmu_objset_space (int ,int*,int*,int*,int*) ;
 int g_handleattr_int (struct bio*,char*,int) ;
 int g_handleattr_off_t (struct bio*,char*,int) ;
 int g_io_deliver (struct bio*,int ) ;
 int metaslab_class_get_alloc (int ) ;
 int metaslab_class_get_space (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int spa_normal_class (int *) ;
 int strcmp (int ,char*) ;
 int wakeup_one (int *) ;
 int zil_commit (int ,int ) ;
 int zvol_strategy (struct bio*) ;

__attribute__((used)) static void
zvol_geom_start(struct bio *bp)
{
 zvol_state_t *zv;
 boolean_t first;

 zv = bp->bio_to->private;
 ASSERT(zv != ((void*)0));
 switch (bp->bio_cmd) {
 case 131:
  if (!THREAD_CAN_SLEEP())
   goto enqueue;
  zil_commit(zv->zv_zilog, ZVOL_OBJ);
  g_io_deliver(bp, 0);
  break;
 case 129:
 case 128:
 case 132:
  if (!THREAD_CAN_SLEEP())
   goto enqueue;
  zvol_strategy(bp);
  break;
 case 130: {
  spa_t *spa = dmu_objset_spa(zv->zv_objset);
  uint64_t refd, avail, usedobjs, availobjs, val;

  if (g_handleattr_int(bp, "GEOM::candelete", 1))
   return;
  if (strcmp(bp->bio_attribute, "blocksavail") == 0) {
   dmu_objset_space(zv->zv_objset, &refd, &avail,
       &usedobjs, &availobjs);
   if (g_handleattr_off_t(bp, "blocksavail",
       avail / DEV_BSIZE))
    return;
  } else if (strcmp(bp->bio_attribute, "blocksused") == 0) {
   dmu_objset_space(zv->zv_objset, &refd, &avail,
       &usedobjs, &availobjs);
   if (g_handleattr_off_t(bp, "blocksused",
       refd / DEV_BSIZE))
    return;
  } else if (strcmp(bp->bio_attribute, "poolblocksavail") == 0) {
   avail = metaslab_class_get_space(spa_normal_class(spa));
   avail -= metaslab_class_get_alloc(spa_normal_class(spa));
   if (g_handleattr_off_t(bp, "poolblocksavail",
       avail / DEV_BSIZE))
    return;
  } else if (strcmp(bp->bio_attribute, "poolblocksused") == 0) {
   refd = metaslab_class_get_alloc(spa_normal_class(spa));
   if (g_handleattr_off_t(bp, "poolblocksused",
       refd / DEV_BSIZE))
    return;
  }

 }
 default:
  g_io_deliver(bp, EOPNOTSUPP);
  break;
 }
 return;

enqueue:
 mtx_lock(&zv->zv_queue_mtx);
 first = (bioq_first(&zv->zv_queue) == ((void*)0));
 bioq_insert_tail(&zv->zv_queue, bp);
 mtx_unlock(&zv->zv_queue_mtx);
 if (first)
  wakeup_one(&zv->zv_queue);
}
