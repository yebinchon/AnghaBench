
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_hs_iterator {int * map; scalar_t__ offset; int * cursor; } ;



void
ck_hs_iterator_init(struct ck_hs_iterator *iterator)
{

 iterator->cursor = ((void*)0);
 iterator->offset = 0;
 iterator->map = ((void*)0);
 return;
}
