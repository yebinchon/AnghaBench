
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _nv {char const* n; int v; } ;



const char *
find_value(struct _nv *x, int value)
{
 for (; x->n != ((void*)0); x++)
  if (x->v == value)
   return (x->n);
 return (((void*)0));
}
