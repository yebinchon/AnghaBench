
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* v; } ;
typedef TYPE_1__ sc25519 ;



void sc25519_window3(signed char r[85], const sc25519 *s)
{
  char carry;
  int i;
  for(i=0;i<10;i++)
  {
    r[8*i+0] = s->v[3*i+0] & 7;
    r[8*i+1] = (s->v[3*i+0] >> 3) & 7;
    r[8*i+2] = (s->v[3*i+0] >> 6) & 7;
    r[8*i+2] ^= (s->v[3*i+1] << 2) & 7;
    r[8*i+3] = (s->v[3*i+1] >> 1) & 7;
    r[8*i+4] = (s->v[3*i+1] >> 4) & 7;
    r[8*i+5] = (s->v[3*i+1] >> 7) & 7;
    r[8*i+5] ^= (s->v[3*i+2] << 1) & 7;
    r[8*i+6] = (s->v[3*i+2] >> 2) & 7;
    r[8*i+7] = (s->v[3*i+2] >> 5) & 7;
  }
  r[8*i+0] = s->v[3*i+0] & 7;
  r[8*i+1] = (s->v[3*i+0] >> 3) & 7;
  r[8*i+2] = (s->v[3*i+0] >> 6) & 7;
  r[8*i+2] ^= (s->v[3*i+1] << 2) & 7;
  r[8*i+3] = (s->v[3*i+1] >> 1) & 7;
  r[8*i+4] = (s->v[3*i+1] >> 4) & 7;


  carry = 0;
  for(i=0;i<84;i++)
  {
    r[i] += carry;
    r[i+1] += r[i] >> 3;
    r[i] &= 7;
    carry = r[i] >> 2;
    r[i] -= carry<<3;
  }
  r[84] += carry;
}
