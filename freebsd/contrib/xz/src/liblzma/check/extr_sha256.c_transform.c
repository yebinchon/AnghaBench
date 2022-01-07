
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int T ;


 int R0 (int) ;
 int R2 (int) ;
 scalar_t__ a (int ) ;
 scalar_t__ b (int ) ;
 scalar_t__ c (int ) ;
 scalar_t__ d (int ) ;
 scalar_t__ e (int ) ;
 scalar_t__ f (int ) ;
 scalar_t__ g (int ) ;
 scalar_t__ h (int ) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static void
transform(uint32_t state[8], const uint32_t data[16])
{
 uint32_t W[16];
 uint32_t T[8];


 memcpy(T, state, sizeof(T));


 R0( 0); R0( 1); R0( 2); R0( 3);
 R0( 4); R0( 5); R0( 6); R0( 7);
 R0( 8); R0( 9); R0(10); R0(11);
 R0(12); R0(13); R0(14); R0(15);


 for (unsigned int j = 16; j < 64; j += 16) {
  R2( 0); R2( 1); R2( 2); R2( 3);
  R2( 4); R2( 5); R2( 6); R2( 7);
  R2( 8); R2( 9); R2(10); R2(11);
  R2(12); R2(13); R2(14); R2(15);
 }


 state[0] += a(0);
 state[1] += b(0);
 state[2] += c(0);
 state[3] += d(0);
 state[4] += e(0);
 state[5] += f(0);
 state[6] += g(0);
 state[7] += h(0);
}
