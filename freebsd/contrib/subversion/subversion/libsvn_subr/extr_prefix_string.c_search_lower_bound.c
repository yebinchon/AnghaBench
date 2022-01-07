
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__* data; } ;
struct TYPE_5__ {TYPE_1__ key; } ;
typedef TYPE_2__ node_t ;



__attribute__((used)) static int
search_lower_bound(node_t **sub_nodes,
                   unsigned char key,
                   int count)
{
  int lower = 0;
  int upper = count - 1;


  while (lower <= upper)
    {
      int current = lower + (upper - lower) / 2;

      if ((unsigned char)sub_nodes[current]->key.data[0] < key)
        lower = current + 1;
      else
        upper = current - 1;
    }

  return lower;
}
