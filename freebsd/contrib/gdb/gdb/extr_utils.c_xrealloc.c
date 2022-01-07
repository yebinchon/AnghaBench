
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PTR ;


 int xmrealloc (int *,int ,size_t) ;

PTR
xrealloc (PTR ptr, size_t size)
{
  return xmrealloc (((void*)0), ptr, size);
}
