
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 uintptr_t fasttrap_fulword (void const*) ;

__attribute__((used)) static uintptr_t
fasttrap_fulword_noerr(const void *uaddr)
{
 uintptr_t ret;

 if ((ret = fasttrap_fulword(uaddr)) != -1)
  return (ret);

 return (0);
}
