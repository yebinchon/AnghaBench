
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ isc_uint64_t ;
struct TYPE_3__ {scalar_t__* state; scalar_t__ buffer; } ;
typedef TYPE_1__ isc_sha512_t ;


 scalar_t__ Ch (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__* K512 ;
 scalar_t__ Maj (scalar_t__,scalar_t__,scalar_t__) ;
 int POST (scalar_t__) ;
 int REVERSE64 (int ,scalar_t__) ;
 scalar_t__ Sigma0_512 (scalar_t__) ;
 scalar_t__ Sigma1_512 (scalar_t__) ;
 scalar_t__ sigma0_512 (scalar_t__) ;
 scalar_t__ sigma1_512 (scalar_t__) ;

void
isc_sha512_transform(isc_sha512_t *context, const isc_uint64_t* data) {
 isc_uint64_t a, b, c, d, e, f, g, h, s0, s1;
 isc_uint64_t T1, T2, *W512 = (isc_uint64_t*)context->buffer;
 int j;


 a = context->state[0];
 b = context->state[1];
 c = context->state[2];
 d = context->state[3];
 e = context->state[4];
 f = context->state[5];
 g = context->state[6];
 h = context->state[7];

 j = 0;
 do {


  REVERSE64(*data++, W512[j]);

  T1 = h + Sigma1_512(e) + Ch(e, f, g) + K512[j] + W512[j];




  T2 = Sigma0_512(a) + Maj(a, b, c);
  h = g;
  g = f;
  f = e;
  e = d + T1;
  d = c;
  c = b;
  b = a;
  a = T1 + T2;

  j++;
 } while (j < 16);

 do {

  s0 = W512[(j+1)&0x0f];
  s0 = sigma0_512(s0);
  s1 = W512[(j+14)&0x0f];
  s1 = sigma1_512(s1);


  T1 = h + Sigma1_512(e) + Ch(e, f, g) + K512[j] +
       (W512[j&0x0f] += s1 + W512[(j+9)&0x0f] + s0);
  T2 = Sigma0_512(a) + Maj(a, b, c);
  h = g;
  g = f;
  f = e;
  e = d + T1;
  d = c;
  c = b;
  b = a;
  a = T1 + T2;

  j++;
 } while (j < 80);


 context->state[0] += a;
 context->state[1] += b;
 context->state[2] += c;
 context->state[3] += d;
 context->state[4] += e;
 context->state[5] += f;
 context->state[6] += g;
 context->state[7] += h;


 a = b = c = d = e = f = g = h = T1 = T2 = 0;

 POST(a); POST(b); POST(c); POST(d); POST(e); POST(f);
 POST(g); POST(h); POST(T1); POST(T2);
}
