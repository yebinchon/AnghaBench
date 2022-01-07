
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memmove (void*,void const*,size_t) ;

void
bcopy(const void *src, void *dst, size_t len)
{

 memmove(dst, src, len);
}
