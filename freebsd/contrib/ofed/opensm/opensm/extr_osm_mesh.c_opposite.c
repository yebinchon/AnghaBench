
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* node; } ;
typedef TYPE_2__ switch_t ;
struct TYPE_4__ {int** matrix; unsigned int num_links; int* axes; } ;



__attribute__((used)) static inline int opposite(switch_t *s, int axis)
{
 unsigned i, j;
 int negaxis = 1 + (1 ^ (axis - 1));

 if (!s->node->matrix)
  return 0;

 for (i = 0; i < s->node->num_links; i++) {
  if (s->node->axes[i] == axis) {
   for (j = 0; j < s->node->num_links; j++) {
    if (j == i)
     continue;
    if (s->node->matrix[i][j] != 2)
     return negaxis;
   }

   return axis;
  }
 }

 return 0;
}
