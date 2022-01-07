
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t mb_len; char* mb_data; scalar_t__ mb_buf; int * mb_next; } ;
typedef TYPE_1__ mb_t ;


 scalar_t__ malloc (int) ;

mb_t *allocmbt(size_t len)
{
 mb_t *m;

 m = (mb_t *)malloc(sizeof(mb_t));
 if (m == ((void*)0))
  return ((void*)0);
 m->mb_len = len;
 m->mb_next = ((void*)0);
 m->mb_data = (char *)m->mb_buf;
 return m;
}
