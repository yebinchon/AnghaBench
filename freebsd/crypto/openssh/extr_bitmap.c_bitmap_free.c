
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitmap {struct bitmap* d; } ;


 int bitmap_zero (struct bitmap*) ;
 int free (struct bitmap*) ;

void
bitmap_free(struct bitmap *b)
{
 if (b != ((void*)0) && b->d != ((void*)0)) {
  bitmap_zero(b);
  free(b->d);
  b->d = ((void*)0);
 }
 free(b);
}
