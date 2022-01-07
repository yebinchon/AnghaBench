
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (void*,void*,size_t) ;
 int memset (char*,int ,size_t) ;

__attribute__((used)) static void
thr_distribute_static_tls(uintptr_t tlsbase, void *src, size_t len,
    size_t total_len)
{

 memcpy((void *)tlsbase, src, len);
 memset((char *)tlsbase + len, 0, total_len - len);
}
