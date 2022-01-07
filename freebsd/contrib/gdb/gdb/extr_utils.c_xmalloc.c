
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PTR ;


 int xmmalloc (int *,size_t) ;

PTR
xmalloc (size_t size)
{
  return xmmalloc (((void*)0), size);
}
