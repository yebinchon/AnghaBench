
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ target_id_t ;
struct cam_et {scalar_t__ target_id; int refcount; int last_reset; int luns_mtx; int * luns; scalar_t__ generation; struct cam_eb* bus; int ed_entries; } ;
struct cam_eb {int generation; int et_entries; int refcount; int eb_mtx; } ;
struct TYPE_2__ {int xpt_topo_lock; } ;


 int MA_OWNED ;
 int MTX_DEF ;
 int M_CAMXPT ;
 int M_NOWAIT ;
 int M_ZERO ;
 struct cam_et* TAILQ_FIRST (int *) ;
 int TAILQ_INIT (int *) ;
 int TAILQ_INSERT_BEFORE (struct cam_et*,struct cam_et*,int ) ;
 int TAILQ_INSERT_TAIL (int *,struct cam_et*,int ) ;
 struct cam_et* TAILQ_NEXT (struct cam_et*,int ) ;
 int links ;
 scalar_t__ malloc (int,int ,int) ;
 int mtx_assert (int *,int ) ;
 int mtx_init (int *,char*,int *,int ) ;
 int timevalclear (int *) ;
 TYPE_1__ xsoftc ;

__attribute__((used)) static struct cam_et *
xpt_alloc_target(struct cam_eb *bus, target_id_t target_id)
{
 struct cam_et *cur_target, *target;

 mtx_assert(&xsoftc.xpt_topo_lock, MA_OWNED);
 mtx_assert(&bus->eb_mtx, MA_OWNED);
 target = (struct cam_et *)malloc(sizeof(*target), M_CAMXPT,
      M_NOWAIT|M_ZERO);
 if (target == ((void*)0))
  return (((void*)0));

 TAILQ_INIT(&target->ed_entries);
 target->bus = bus;
 target->target_id = target_id;
 target->refcount = 1;
 target->generation = 0;
 target->luns = ((void*)0);
 mtx_init(&target->luns_mtx, "CAM LUNs lock", ((void*)0), MTX_DEF);
 timevalclear(&target->last_reset);




 bus->refcount++;


 cur_target = TAILQ_FIRST(&bus->et_entries);
 while (cur_target != ((void*)0) && cur_target->target_id < target_id)
  cur_target = TAILQ_NEXT(cur_target, links);
 if (cur_target != ((void*)0)) {
  TAILQ_INSERT_BEFORE(cur_target, target, links);
 } else {
  TAILQ_INSERT_TAIL(&bus->et_entries, target, links);
 }
 bus->generation++;
 return (target);
}
