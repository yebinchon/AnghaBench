
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ev_arc4random_buf (void*,size_t) ;

void
evutil_secure_rng_get_bytes(void *buf, size_t n)
{
 ev_arc4random_buf(buf, n);
}
