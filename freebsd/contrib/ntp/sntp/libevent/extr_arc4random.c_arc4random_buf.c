
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARC4_LOCK_ () ;
 int ARC4_UNLOCK_ () ;
 scalar_t__ arc4_count ;
 unsigned char arc4_getbyte () ;
 int arc4_stir () ;
 int arc4_stir_if_needed () ;

void
arc4random_buf(void *buf_, size_t n)
{
 unsigned char *buf = buf_;
 ARC4_LOCK_();
 arc4_stir_if_needed();
 while (n--) {
  if (--arc4_count <= 0)
   arc4_stir();
  buf[n] = arc4_getbyte();
 }
 ARC4_UNLOCK_();
}
