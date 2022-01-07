
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int evutil_secure_rng_get_bytes (void*,size_t) ;

__attribute__((used)) static void
arc4random_buf(void *buf, size_t nbytes)
{
 evutil_secure_rng_get_bytes(buf, nbytes);
 return;
}
