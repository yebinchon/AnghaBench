
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int nelem; TYPE_1__* elems; } ;
typedef TYPE_2__ position_set ;
struct TYPE_8__ {scalar_t__ index; } ;
typedef TYPE_3__ position ;
struct TYPE_6__ {scalar_t__ index; } ;



__attribute__((used)) static void
delete (position p, position_set *s)
{
  int i;

  for (i = 0; i < s->nelem; ++i)
    if (p.index == s->elems[i].index)
      break;
  if (i < s->nelem)
    for (--s->nelem; i < s->nelem; ++i)
      s->elems[i] = s->elems[i + 1];
}
