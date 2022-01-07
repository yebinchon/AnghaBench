
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sc25519 ;
typedef unsigned char crypto_uint32 ;


 int barrett_reduce (int *,unsigned char*) ;

void sc25519_from64bytes(sc25519 *r, const unsigned char x[64])
{
  int i;
  crypto_uint32 t[64];
  for(i=0;i<64;i++) t[i] = x[i];
  barrett_reduce(r, t);
}
