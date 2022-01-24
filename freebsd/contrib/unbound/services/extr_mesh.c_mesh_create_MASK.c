#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  void* time_t ;
struct module_stack {int dummy; } ;
struct module_env {TYPE_2__* cfg; } ;
struct TYPE_3__ {void* tv_usec; void* tv_sec; } ;
struct mesh_area {int max_reply_states; int max_forever_states; TYPE_1__ jostle_max; scalar_t__ stats_dropped; scalar_t__ stats_jostled; scalar_t__ num_forever_states; scalar_t__ num_detached_states; scalar_t__ num_reply_states; scalar_t__ num_reply_addrs; int /*<<< orphan*/  all; int /*<<< orphan*/  run; struct module_env* env; struct module_stack mods; int /*<<< orphan*/  qbuf_bak; int /*<<< orphan*/  histogram; } ;
struct TYPE_4__ {int num_queries_per_thread; int jostle_time; int /*<<< orphan*/  msg_buffer_size; } ;

/* Variables and functions */
 struct mesh_area* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mesh_area*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  mesh_state_compare ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 

struct mesh_area* 
FUNC6(struct module_stack* stack, struct module_env* env)
{
	struct mesh_area* mesh = FUNC0(1, sizeof(struct mesh_area));
	if(!mesh) {
		FUNC2("mesh area alloc: out of memory");
		return NULL;
	}
	mesh->histogram = FUNC5();
	mesh->qbuf_bak = FUNC4(env->cfg->msg_buffer_size);
	if(!mesh->histogram || !mesh->qbuf_bak) {
		FUNC1(mesh);
		FUNC2("mesh area alloc: out of memory");
		return NULL;
	}
	mesh->mods = *stack;
	mesh->env = env;
	FUNC3(&mesh->run, &mesh_state_compare);
	FUNC3(&mesh->all, &mesh_state_compare);
	mesh->num_reply_addrs = 0;
	mesh->num_reply_states = 0;
	mesh->num_detached_states = 0;
	mesh->num_forever_states = 0;
	mesh->stats_jostled = 0;
	mesh->stats_dropped = 0;
	mesh->max_reply_states = env->cfg->num_queries_per_thread;
	mesh->max_forever_states = (mesh->max_reply_states+1)/2;
#ifndef S_SPLINT_S
	mesh->jostle_max.tv_sec = (time_t)(env->cfg->jostle_time / 1000);
	mesh->jostle_max.tv_usec = (time_t)((env->cfg->jostle_time % 1000)
		*1000);
#endif
	return mesh;
}