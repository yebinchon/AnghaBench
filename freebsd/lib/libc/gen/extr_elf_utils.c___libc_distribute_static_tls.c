
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 uintptr_t _libc_get_static_tls_base (size_t) ;
 int memcpy (void*,void*,size_t) ;
 int memset (char*,int ,size_t) ;

void
__libc_distribute_static_tls(size_t offset, void *src, size_t len,
    size_t total_len)
{
 uintptr_t tlsbase;

 tlsbase = _libc_get_static_tls_base(offset);
 memcpy((void *)tlsbase, src, len);
 memset((char *)tlsbase + len, 0, total_len - len);
}
