
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dropped; int * sw; scalar_t__ heap_id; int state; scalar_t__ distance; int * used_link; scalar_t__ hops; int * links; scalar_t__ num_hca; scalar_t__ lid; scalar_t__ guid; } ;
typedef TYPE_1__ vertex_t ;


 int FALSE ;
 int UNDISCOVERED ;

__attribute__((used)) static inline void set_default_vertex(vertex_t * vertex)
{
 vertex->guid = 0;
 vertex->lid = 0;
 vertex->num_hca = 0;
 vertex->links = ((void*)0);
 vertex->hops = 0;
 vertex->used_link = ((void*)0);
 vertex->distance = 0;
 vertex->state = UNDISCOVERED;
 vertex->heap_id = 0;
 vertex->sw = ((void*)0);
 vertex->dropped = FALSE;
}
