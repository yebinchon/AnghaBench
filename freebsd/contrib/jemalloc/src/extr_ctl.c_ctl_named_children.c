
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int children; } ;
typedef TYPE_1__ ctl_named_node_t ;


 TYPE_1__* ctl_named_node (int ) ;

__attribute__((used)) static const ctl_named_node_t *
ctl_named_children(const ctl_named_node_t *node, size_t index) {
 const ctl_named_node_t *children = ctl_named_node(node->children);

 return (children ? &children[index] : ((void*)0));
}
