
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * parent; int * right; int * left; int * pre; scalar_t__ visited; int status; int * linklist; scalar_t__ channelID; } ;
typedef TYPE_1__ cdg_node_t ;


 int UNKNOWN ;

__attribute__((used)) static inline void set_default_cdg_node(cdg_node_t * node)
{
 node->channelID = 0;
 node->linklist = ((void*)0);
 node->status = UNKNOWN;
 node->visited = 0;
 node->pre = ((void*)0);
 node->left = ((void*)0);
 node->right = ((void*)0);
 node->parent = ((void*)0);
}
