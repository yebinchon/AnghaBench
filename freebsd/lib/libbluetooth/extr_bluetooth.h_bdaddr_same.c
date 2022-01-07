
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__* b; } ;
typedef TYPE_1__ bdaddr_t ;



__attribute__((used)) static __inline int
bdaddr_same(const bdaddr_t *a, const bdaddr_t *b)
{
 return (a->b[0] == b->b[0] && a->b[1] == b->b[1] &&
  a->b[2] == b->b[2] && a->b[3] == b->b[3] &&
  a->b[4] == b->b[4] && a->b[5] == b->b[5]);
}
