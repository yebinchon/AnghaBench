
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t INTERPOS_distribute_static_tls ;
 scalar_t__* __libc_interposing ;
 void stub1 (size_t,void*,size_t,size_t) ;

void
__pthread_distribute_static_tls(size_t offset, void *src, size_t len,
    size_t total_len)
{

 ((void (*)(size_t, void *, size_t, size_t))__libc_interposing[
     INTERPOS_distribute_static_tls])(offset, src, len, total_len);
}
