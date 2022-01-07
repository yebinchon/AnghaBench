
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_char ;
struct TYPE_4__ {scalar_t__ size; scalar_t__* data; } ;
typedef TYPE_1__ DBT ;


 size_t MIN (scalar_t__,scalar_t__) ;

size_t
__bt_defpfx(const DBT *a, const DBT *b)
{
 u_char *p1, *p2;
 size_t cnt, len;

 cnt = 1;
 len = MIN(a->size, b->size);
 for (p1 = a->data, p2 = b->data; len--; ++p1, ++p2, ++cnt)
  if (*p1 != *p2)
   return (cnt);


 return (a->size < b->size ? a->size + 1 : a->size);
}
