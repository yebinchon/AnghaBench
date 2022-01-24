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
 int crypto_hash_sha512_BYTES ; 
 int FUNC0 (unsigned char const*,unsigned char*) ; 
 int /*<<< orphan*/  ge25519_base ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,unsigned char const*,unsigned char const*,unsigned char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned char*) ; 

int FUNC7(
    unsigned char *m,unsigned long long *mlen,
    const unsigned char *sm,unsigned long long smlen,
    const unsigned char *pk
    )
{
  unsigned int i;
  int ret;
  unsigned char t2[32];
  ge25519 get1, get2;
  sc25519 schram, scs;
  unsigned char hram[crypto_hash_sha512_BYTES];

  *mlen = (unsigned long long) -1;
  if (smlen < 64) return -1;

  if (FUNC3(&get1, pk)) return -1;

  FUNC4(hram,sm,pk,m,smlen);

  FUNC6(&schram, hram);

  FUNC5(&scs, sm+32);

  FUNC1(&get2, &get1, &schram, &ge25519_base, &scs);
  FUNC2(t2, &get2);

  ret = FUNC0(sm, t2);

  if (!ret)
  {
    for(i=0;i<smlen-64;i++)
      m[i] = sm[i + 64];
    *mlen = smlen-64;
  }
  else
  {
    for(i=0;i<smlen-64;i++)
      m[i] = 0;
  }
  return ret;
}