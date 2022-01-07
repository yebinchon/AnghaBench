
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* node; } ;
typedef TYPE_2__ switch_t ;
struct TYPE_4__ {unsigned int num_links; int poly; } ;


 int memcmp (int const*,int ,unsigned int) ;

__attribute__((used)) static int poly_diff(unsigned int n, const int *p, switch_t *s)
{
 if (s->node->num_links != n)
  return 1;

 return memcmp(p, s->node->poly, n*sizeof(int));
}
