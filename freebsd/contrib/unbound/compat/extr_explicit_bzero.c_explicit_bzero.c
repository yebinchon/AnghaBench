
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SecureZeroMemory (void*,size_t) ;
 int __explicit_bzero_hook (void*,size_t) ;
 int memset (void*,int ,size_t) ;

void
explicit_bzero(void *buf, size_t len)
{



 memset(buf, 0, len);
 __explicit_bzero_hook(buf, len);
}
