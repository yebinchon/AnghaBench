
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 scalar_t__ IVSZ ;
 scalar_t__ KEYSZ ;
 int MIN (int,scalar_t__) ;
 int _ARC4_LOCK () ;
 int _ARC4_UNLOCK () ;
 int _rs_rekey (int *,int) ;
 int _rs_stir () ;
 int rs_initialized ;

void
arc4random_addrandom(u_char *dat, int datlen)
{
 int m;

 _ARC4_LOCK();
 if (!rs_initialized)
  _rs_stir();
 while (datlen > 0) {
  m = MIN(datlen, KEYSZ + IVSZ);
  _rs_rekey(dat, m);
  dat += m;
  datlen -= m;
 }
 _ARC4_UNLOCK();
}
