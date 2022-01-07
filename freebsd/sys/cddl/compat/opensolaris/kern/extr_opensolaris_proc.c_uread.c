
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;
typedef int proc_t ;


 int ENOMEM ;
 int curthread ;
 size_t proc_readmem (int ,int *,uintptr_t,void*,size_t) ;

int
uread(proc_t *p, void *kaddr, size_t len, uintptr_t uaddr)
{
 ssize_t n;

 n = proc_readmem(curthread, p, uaddr, kaddr, len);
 if (n != len)
  return (ENOMEM);
 return (0);
}
