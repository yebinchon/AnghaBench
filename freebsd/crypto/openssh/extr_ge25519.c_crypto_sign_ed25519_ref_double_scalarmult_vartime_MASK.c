#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  sc25519 ;
typedef  scalar_t__ ge25519_p3 ;
typedef  int /*<<< orphan*/  ge25519_p2 ;
typedef  int /*<<< orphan*/  ge25519_p1p1 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*) ; 

void FUNC6(ge25519_p3 *r, const ge25519_p3 *p1, const sc25519 *s1, const ge25519_p3 *p2, const sc25519 *s2)
{
  ge25519_p1p1 tp1p1;
  ge25519_p3 pre[16];
  unsigned char b[127];
  int i;

  /* precomputation                                                        s2 s1 */
  FUNC5(pre);                                                      /* 00 00 */
  pre[1] = *p1;                                                         /* 00 01 */
  FUNC1(&tp1p1,(ge25519_p2 *)p1);      FUNC3( &pre[2], &tp1p1); /* 00 10 */
  FUNC0(&tp1p1,&pre[1], &pre[2]);      FUNC3( &pre[3], &tp1p1); /* 00 11 */
  pre[4] = *p2;                                                         /* 01 00 */
  FUNC0(&tp1p1,&pre[1], &pre[4]);      FUNC3( &pre[5], &tp1p1); /* 01 01 */
  FUNC0(&tp1p1,&pre[2], &pre[4]);      FUNC3( &pre[6], &tp1p1); /* 01 10 */
  FUNC0(&tp1p1,&pre[3], &pre[4]);      FUNC3( &pre[7], &tp1p1); /* 01 11 */
  FUNC1(&tp1p1,(ge25519_p2 *)p2);      FUNC3( &pre[8], &tp1p1); /* 10 00 */
  FUNC0(&tp1p1,&pre[1], &pre[8]);      FUNC3( &pre[9], &tp1p1); /* 10 01 */
  FUNC1(&tp1p1,(ge25519_p2 *)&pre[5]); FUNC3(&pre[10], &tp1p1); /* 10 10 */
  FUNC0(&tp1p1,&pre[3], &pre[8]);      FUNC3(&pre[11], &tp1p1); /* 10 11 */
  FUNC0(&tp1p1,&pre[4], &pre[8]);      FUNC3(&pre[12], &tp1p1); /* 11 00 */
  FUNC0(&tp1p1,&pre[1],&pre[12]);      FUNC3(&pre[13], &tp1p1); /* 11 01 */
  FUNC0(&tp1p1,&pre[2],&pre[12]);      FUNC3(&pre[14], &tp1p1); /* 11 10 */
  FUNC0(&tp1p1,&pre[3],&pre[12]);      FUNC3(&pre[15], &tp1p1); /* 11 11 */

  FUNC4(b,s1,s2);

  /* scalar multiplication */
  *r = pre[b[126]];
  for(i=125;i>=0;i--)
  {
    FUNC1(&tp1p1, (ge25519_p2 *)r);
    FUNC2((ge25519_p2 *) r, &tp1p1);
    FUNC1(&tp1p1, (ge25519_p2 *)r);
    if(b[i]!=0)
    {
      FUNC3(r, &tp1p1);
      FUNC0(&tp1p1, r, &pre[b[i]]);
    }
    if(i != 0) FUNC2((ge25519_p2 *)r, &tp1p1);
    else FUNC3(r, &tp1p1);
  }
}