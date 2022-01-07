
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitmap {size_t top; size_t len; scalar_t__* d; } ;



__attribute__((used)) static void
retop(struct bitmap *b)
{
 if (b->top >= b->len)
  return;
 while (b->top > 0 && b->d[b->top] == 0)
  b->top--;
}
