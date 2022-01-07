
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARC4_LOCK_ () ;
 int ARC4_UNLOCK_ () ;
 int arc4_addrandom (unsigned char const*,int) ;
 int arc4_stir () ;
 int rs_initialized ;

void
arc4random_addrandom(const unsigned char *dat, int datlen)
{
 int j;
 ARC4_LOCK_();
 if (!rs_initialized)
  arc4_stir();
 for (j = 0; j < datlen; j += 256) {




  arc4_addrandom(dat + j, datlen - j);
 }
 ARC4_UNLOCK_();
}
