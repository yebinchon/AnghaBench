
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct libworker {int back; int sslctx; TYPE_1__* env; scalar_t__ is_bg_thread; int is_bg; int ctx; } ;
struct TYPE_2__ {int rnd; int hints; int fwds; int scratch; int scratch_buffer; int alloc; int mesh; } ;


 int SSL_CTX_free (int ) ;
 int context_release_alloc (int ,int ,int) ;
 int forwards_delete (int ) ;
 int free (TYPE_1__*) ;
 int hints_delete (int ) ;
 int mesh_delete (int ) ;
 int outside_network_delete (int ) ;
 int outside_network_quit_prepare (int ) ;
 int regional_destroy (int ) ;
 int sldns_buffer_free (int ) ;
 int ub_randfree (int ) ;

__attribute__((used)) static void
libworker_delete_env(struct libworker* w)
{
 if(w->env) {
  outside_network_quit_prepare(w->back);
  mesh_delete(w->env->mesh);
  context_release_alloc(w->ctx, w->env->alloc,
   !w->is_bg || w->is_bg_thread);
  sldns_buffer_free(w->env->scratch_buffer);
  regional_destroy(w->env->scratch);
  forwards_delete(w->env->fwds);
  hints_delete(w->env->hints);
  ub_randfree(w->env->rnd);
  free(w->env);
 }



 outside_network_delete(w->back);
}
