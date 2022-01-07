
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memset (void*,int ,size_t) ;
 int ssh_bzero (void*,size_t) ;

void
explicit_bzero(void *p, size_t n)
{
 if (n == 0)
  return;
 ssh_bzero(p, n);
}
