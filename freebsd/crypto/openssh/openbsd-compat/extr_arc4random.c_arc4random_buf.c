
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ARC4_LOCK () ;
 int _ARC4_UNLOCK () ;
 int _rs_random_buf (void*,size_t) ;

void
arc4random_buf(void *buf, size_t n)
{
 _ARC4_LOCK();
 _rs_random_buf(buf, n);
 _ARC4_UNLOCK();
}
