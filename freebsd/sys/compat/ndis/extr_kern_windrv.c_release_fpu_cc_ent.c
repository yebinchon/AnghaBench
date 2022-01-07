
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fpu_cc_ent {int dummy; } ;


 int LIST_INSERT_HEAD (int *,struct fpu_cc_ent*,int ) ;
 int LIST_REMOVE (struct fpu_cc_ent*,int ) ;
 int entries ;
 int fpu_busy_mtx ;
 int fpu_free_head ;
 int fpu_free_mtx ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
release_fpu_cc_ent(struct fpu_cc_ent *ent)
{
 mtx_lock(&fpu_busy_mtx);
 LIST_REMOVE(ent, entries);
 mtx_unlock(&fpu_busy_mtx);
 mtx_lock(&fpu_free_mtx);
 LIST_INSERT_HEAD(&fpu_free_head, ent, entries);
 mtx_unlock(&fpu_free_mtx);
}
