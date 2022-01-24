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
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned char const*,unsigned long long) ; 
 int crypto_hash_sha512_BYTES ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char*,unsigned char const*,unsigned char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,int /*<<< orphan*/ *) ; 

int FUNC9(
    unsigned char *sm,unsigned long long *smlen,
    const unsigned char *m,unsigned long long mlen,
    const unsigned char *sk
    )
{
  sc25519 sck, scs, scsk;
  ge25519 ger;
  unsigned char r[32];
  unsigned char s[32];
  unsigned char extsk[64];
  unsigned long long i;
  unsigned char hmg[crypto_hash_sha512_BYTES];
  unsigned char hram[crypto_hash_sha512_BYTES];

  FUNC0(extsk, sk, 32);
  extsk[0] &= 248;
  extsk[31] &= 127;
  extsk[31] |= 64;

  *smlen = mlen+64;
  for(i=0;i<mlen;i++)
    sm[64 + i] = m[i];
  for(i=0;i<32;i++)
    sm[32 + i] = extsk[32+i];

  FUNC0(hmg, sm+32, mlen+32); /* Generate k as h(extsk[32],...,extsk[63],m) */

  /* Computation of R */
  FUNC6(&sck, hmg);
  FUNC2(&ger, &sck);
  FUNC1(r, &ger);
  
  /* Computation of s */
  for(i=0;i<32;i++)
    sm[i] = r[i];

  FUNC3(hram, sm, sk+32, sm, mlen+64);

  FUNC6(&scs, hram);
  FUNC5(&scsk, extsk);
  FUNC7(&scs, &scs, &scsk);
  
  FUNC4(&scs, &scs, &sck);

  FUNC8(s,&scs); /* cat s */
  for(i=0;i<32;i++)
    sm[32 + i] = s[i]; 

  return 0;
}