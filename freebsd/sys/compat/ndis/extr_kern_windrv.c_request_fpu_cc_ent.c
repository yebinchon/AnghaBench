
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpu_cc_ent {int * ctx; } ;


 int FPU_KERN_NORMAL ;
 int FPU_KERN_NOWAIT ;
 struct fpu_cc_ent* LIST_FIRST (int *) ;
 int LIST_INSERT_HEAD (int *,struct fpu_cc_ent*,int ) ;
 int LIST_REMOVE (struct fpu_cc_ent*,int ) ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int entries ;
 int fpu_busy_head ;
 int fpu_busy_mtx ;
 int fpu_free_head ;
 int fpu_free_mtx ;
 int * fpu_kern_alloc_ctx (int) ;
 int free (struct fpu_cc_ent*,int ) ;
 struct fpu_cc_ent* malloc (int,int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static struct fpu_cc_ent *
request_fpu_cc_ent(void)
{
 struct fpu_cc_ent *ent;

 mtx_lock(&fpu_free_mtx);
 if ((ent = LIST_FIRST(&fpu_free_head)) != ((void*)0)) {
  LIST_REMOVE(ent, entries);
  mtx_unlock(&fpu_free_mtx);
  mtx_lock(&fpu_busy_mtx);
  LIST_INSERT_HEAD(&fpu_busy_head, ent, entries);
  mtx_unlock(&fpu_busy_mtx);
  return (ent);
 }
 mtx_unlock(&fpu_free_mtx);

 if ((ent = malloc(sizeof(struct fpu_cc_ent), M_DEVBUF, M_NOWAIT |
     M_ZERO)) != ((void*)0)) {
  ent->ctx = fpu_kern_alloc_ctx(FPU_KERN_NORMAL |
      FPU_KERN_NOWAIT);
  if (ent->ctx != ((void*)0)) {
   mtx_lock(&fpu_busy_mtx);
   LIST_INSERT_HEAD(&fpu_busy_head, ent, entries);
   mtx_unlock(&fpu_busy_mtx);
  } else {
   free(ent, M_DEVBUF);
   ent = ((void*)0);
  }
 }

 return (ent);
}
