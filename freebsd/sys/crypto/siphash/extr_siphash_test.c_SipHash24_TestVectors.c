
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int SIPHASH_CTX ;


 int MAXLEN ;
 int SipHash24_Init (int *) ;
 int SipHash_Final (int*,int *) ;
 int SipHash_SetKey (int *,int*) ;
 int SipHash_Update (int *,int*,int) ;
 scalar_t__ memcmp (int*,int ,int) ;
 int printf (char*,int) ;
 int * vectors ;

int
SipHash24_TestVectors(void)
{
 int i, fail = 0;
 uint8_t in[MAXLEN], out[8], k[16];
 SIPHASH_CTX ctx;


 for (i = 0; i < 16; ++i)
  k[i] = i;


 for (i = 0; i < MAXLEN; ++i) {
  in[i] = i;

  SipHash24_Init(&ctx);
  SipHash_SetKey(&ctx, k);
  SipHash_Update(&ctx, in, i);
  SipHash_Final(out, &ctx);

  if (memcmp(out, vectors[i], 8))





   fail++;

 }

 return ((fail == 0));
}
