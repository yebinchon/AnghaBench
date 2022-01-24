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
typedef  int /*<<< orphan*/  ge25519 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char*) ; 

int FUNC5(
    unsigned char *pk,
    unsigned char *sk
    )
{
  sc25519 scsk;
  ge25519 gepk;
  unsigned char extsk[64];
  int i;

  FUNC3(sk, 32);
  FUNC0(extsk, sk, 32);
  extsk[0] &= 248;
  extsk[31] &= 127;
  extsk[31] |= 64;

  FUNC4(&scsk,extsk);
  
  FUNC2(&gepk, &scsk);
  FUNC1(pk, &gepk);
  for(i=0;i<32;i++)
    sk[32 + i] = pk[i];
  return 0;
}