
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pv_chunks_list {int pvc_lock; int pvc_list; } ;
struct pv_chunk {int dummy; } ;


 int TAILQ_REMOVE (int *,struct pv_chunk*,int ) ;
 int free_pv_chunk_dequeued (struct pv_chunk*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int pc_lru ;
 size_t pc_to_domain (struct pv_chunk*) ;
 struct pv_chunks_list* pv_chunks ;

__attribute__((used)) static void
free_pv_chunk(struct pv_chunk *pc)
{
 struct pv_chunks_list *pvc;

 pvc = &pv_chunks[pc_to_domain(pc)];
 mtx_lock(&pvc->pvc_lock);
 TAILQ_REMOVE(&pvc->pvc_list, pc, pc_lru);
 mtx_unlock(&pvc->pvc_lock);
 free_pv_chunk_dequeued(pc);
}
