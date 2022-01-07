
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int _ARC4_LOCK () ;
 int _ARC4_UNLOCK () ;
 scalar_t__ arc4_count ;
 int arc4_getbyte () ;
 int arc4_stir () ;
 int arc4_stir_if_needed () ;

__attribute__((used)) static void
arc4random_buf(void *_buf, size_t n)
{
 u_char *buf = (u_char *)_buf;
 _ARC4_LOCK();
 arc4_stir_if_needed();
 while (n--) {
  if (--arc4_count <= 0)
   arc4_stir();
  buf[n] = arc4_getbyte();
 }
 _ARC4_UNLOCK();
}
