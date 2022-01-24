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

/* Variables and functions */
 int APR_MD5_DIGESTSIZE ; 
 char FUNC0 (unsigned char const) ; 

__attribute__((used)) static void FUNC1(char *hexval, const unsigned char *hashval)
{
  int i;

  for (i = 0; i < APR_MD5_DIGESTSIZE; i++)
    {
      hexval[2 * i] = FUNC0((hashval[i] >> 4) & 0xf);
      hexval[2 * i + 1] = FUNC0(hashval[i] & 0xf);
    }
}