
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ blocks; scalar_t__ levels; scalar_t__ space; scalar_t__ edges; scalar_t__ vmap; scalar_t__ vnode_base; } ;
typedef TYPE_1__ opt_state_t ;


 int free (void*) ;

__attribute__((used)) static void
opt_cleanup(opt_state_t *opt_state)
{
 free((void *)opt_state->vnode_base);
 free((void *)opt_state->vmap);
 free((void *)opt_state->edges);
 free((void *)opt_state->space);
 free((void *)opt_state->levels);
 free((void *)opt_state->blocks);
}
