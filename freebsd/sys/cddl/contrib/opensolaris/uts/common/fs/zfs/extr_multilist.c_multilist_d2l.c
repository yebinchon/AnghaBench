
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ml_offset; } ;
typedef TYPE_1__ multilist_t ;
typedef int multilist_node_t ;



__attribute__((used)) static multilist_node_t *
multilist_d2l(multilist_t *ml, void *obj)
{
 return ((multilist_node_t *)((char *)obj + ml->ml_offset));
}
