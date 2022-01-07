
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitmap {int len; scalar_t__ top; int d; } ;


 int BITMAP_BYTES ;
 int memset (int ,int ,int) ;

void
bitmap_zero(struct bitmap *b)
{
 memset(b->d, 0, b->len * BITMAP_BYTES);
 b->top = 0;
}
