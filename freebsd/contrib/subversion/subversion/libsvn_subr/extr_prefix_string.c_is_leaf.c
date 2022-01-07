
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_boolean_t ;
struct TYPE_4__ {scalar_t__* data; } ;
struct TYPE_5__ {TYPE_1__ key; } ;
typedef TYPE_2__ node_t ;



__attribute__((used)) static svn_boolean_t
is_leaf(node_t *node)
{






  return node->key.data[7] == 0;
}
