
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitmap {int len; scalar_t__ top; int * d; } ;


 int BITMAP_BYTES ;
 void* calloc (int,int) ;
 int free (struct bitmap*) ;

struct bitmap *
bitmap_new(void)
{
 struct bitmap *ret;

 if ((ret = calloc(1, sizeof(*ret))) == ((void*)0))
  return ((void*)0);
 if ((ret->d = calloc(1, BITMAP_BYTES)) == ((void*)0)) {
  free(ret);
  return ((void*)0);
 }
 ret->len = 1;
 ret->top = 0;
 return ret;
}
