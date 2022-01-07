
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PTR ;


 int xmcalloc (int *,size_t,size_t) ;

PTR
xcalloc (size_t number, size_t size)
{
  return xmcalloc (((void*)0), number, size);
}
