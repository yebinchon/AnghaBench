
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ccb_hdr {int dummy; } ;
struct cam_doneq {int cam_doneq_mtx; int cam_doneq; } ;
struct TYPE_2__ {int stqe; } ;


 struct ccb_hdr* STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 struct cam_doneq* cam_doneqs ;
 int cam_num_doneqs ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 TYPE_1__ sim_links ;
 int xpt_done_process (struct ccb_hdr*) ;

__attribute__((used)) static void
camisr_runqueue(void)
{
 struct ccb_hdr *ccb_h;
 struct cam_doneq *queue;
 int i;


 for (i = 0; i < cam_num_doneqs; i++) {
  queue = &cam_doneqs[i];
  mtx_lock(&queue->cam_doneq_mtx);
  while ((ccb_h = STAILQ_FIRST(&queue->cam_doneq)) != ((void*)0)) {
   STAILQ_REMOVE_HEAD(&queue->cam_doneq, sim_links.stqe);
   mtx_unlock(&queue->cam_doneq_mtx);
   xpt_done_process(ccb_h);
   mtx_lock(&queue->cam_doneq_mtx);
  }
  mtx_unlock(&queue->cam_doneq_mtx);
 }
}
