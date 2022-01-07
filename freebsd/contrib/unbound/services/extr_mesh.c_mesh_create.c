
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* time_t ;
struct module_stack {int dummy; } ;
struct module_env {TYPE_2__* cfg; } ;
struct TYPE_3__ {void* tv_usec; void* tv_sec; } ;
struct mesh_area {int max_reply_states; int max_forever_states; TYPE_1__ jostle_max; scalar_t__ stats_dropped; scalar_t__ stats_jostled; scalar_t__ num_forever_states; scalar_t__ num_detached_states; scalar_t__ num_reply_states; scalar_t__ num_reply_addrs; int all; int run; struct module_env* env; struct module_stack mods; int qbuf_bak; int histogram; } ;
struct TYPE_4__ {int num_queries_per_thread; int jostle_time; int msg_buffer_size; } ;


 struct mesh_area* calloc (int,int) ;
 int free (struct mesh_area*) ;
 int log_err (char*) ;
 int mesh_state_compare ;
 int rbtree_init (int *,int *) ;
 int sldns_buffer_new (int ) ;
 int timehist_setup () ;

struct mesh_area*
mesh_create(struct module_stack* stack, struct module_env* env)
{
 struct mesh_area* mesh = calloc(1, sizeof(struct mesh_area));
 if(!mesh) {
  log_err("mesh area alloc: out of memory");
  return ((void*)0);
 }
 mesh->histogram = timehist_setup();
 mesh->qbuf_bak = sldns_buffer_new(env->cfg->msg_buffer_size);
 if(!mesh->histogram || !mesh->qbuf_bak) {
  free(mesh);
  log_err("mesh area alloc: out of memory");
  return ((void*)0);
 }
 mesh->mods = *stack;
 mesh->env = env;
 rbtree_init(&mesh->run, &mesh_state_compare);
 rbtree_init(&mesh->all, &mesh_state_compare);
 mesh->num_reply_addrs = 0;
 mesh->num_reply_states = 0;
 mesh->num_detached_states = 0;
 mesh->num_forever_states = 0;
 mesh->stats_jostled = 0;
 mesh->stats_dropped = 0;
 mesh->max_reply_states = env->cfg->num_queries_per_thread;
 mesh->max_forever_states = (mesh->max_reply_states+1)/2;

 mesh->jostle_max.tv_sec = (time_t)(env->cfg->jostle_time / 1000);
 mesh->jostle_max.tv_usec = (time_t)((env->cfg->jostle_time % 1000)
  *1000);

 return mesh;
}
