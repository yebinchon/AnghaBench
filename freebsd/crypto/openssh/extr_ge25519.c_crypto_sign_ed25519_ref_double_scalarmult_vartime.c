
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sc25519 ;
typedef scalar_t__ ge25519_p3 ;
typedef int ge25519_p2 ;
typedef int ge25519_p1p1 ;


 int add_p1p1 (int *,scalar_t__*,scalar_t__*) ;
 int dbl_p1p1 (int *,int *) ;
 int p1p1_to_p2 (int *,int *) ;
 int p1p1_to_p3 (scalar_t__*,int *) ;
 int sc25519_2interleave2 (unsigned char*,int const*,int const*) ;
 int setneutral (scalar_t__*) ;

void ge25519_double_scalarmult_vartime(ge25519_p3 *r, const ge25519_p3 *p1, const sc25519 *s1, const ge25519_p3 *p2, const sc25519 *s2)
{
  ge25519_p1p1 tp1p1;
  ge25519_p3 pre[16];
  unsigned char b[127];
  int i;


  setneutral(pre);
  pre[1] = *p1;
  dbl_p1p1(&tp1p1,(ge25519_p2 *)p1); p1p1_to_p3( &pre[2], &tp1p1);
  add_p1p1(&tp1p1,&pre[1], &pre[2]); p1p1_to_p3( &pre[3], &tp1p1);
  pre[4] = *p2;
  add_p1p1(&tp1p1,&pre[1], &pre[4]); p1p1_to_p3( &pre[5], &tp1p1);
  add_p1p1(&tp1p1,&pre[2], &pre[4]); p1p1_to_p3( &pre[6], &tp1p1);
  add_p1p1(&tp1p1,&pre[3], &pre[4]); p1p1_to_p3( &pre[7], &tp1p1);
  dbl_p1p1(&tp1p1,(ge25519_p2 *)p2); p1p1_to_p3( &pre[8], &tp1p1);
  add_p1p1(&tp1p1,&pre[1], &pre[8]); p1p1_to_p3( &pre[9], &tp1p1);
  dbl_p1p1(&tp1p1,(ge25519_p2 *)&pre[5]); p1p1_to_p3(&pre[10], &tp1p1);
  add_p1p1(&tp1p1,&pre[3], &pre[8]); p1p1_to_p3(&pre[11], &tp1p1);
  add_p1p1(&tp1p1,&pre[4], &pre[8]); p1p1_to_p3(&pre[12], &tp1p1);
  add_p1p1(&tp1p1,&pre[1],&pre[12]); p1p1_to_p3(&pre[13], &tp1p1);
  add_p1p1(&tp1p1,&pre[2],&pre[12]); p1p1_to_p3(&pre[14], &tp1p1);
  add_p1p1(&tp1p1,&pre[3],&pre[12]); p1p1_to_p3(&pre[15], &tp1p1);

  sc25519_2interleave2(b,s1,s2);


  *r = pre[b[126]];
  for(i=125;i>=0;i--)
  {
    dbl_p1p1(&tp1p1, (ge25519_p2 *)r);
    p1p1_to_p2((ge25519_p2 *) r, &tp1p1);
    dbl_p1p1(&tp1p1, (ge25519_p2 *)r);
    if(b[i]!=0)
    {
      p1p1_to_p3(r, &tp1p1);
      add_p1p1(&tp1p1, r, &pre[b[i]]);
    }
    if(i != 0) p1p1_to_p2((ge25519_p2 *)r, &tp1p1);
    else p1p1_to_p3(r, &tp1p1);
  }
}
