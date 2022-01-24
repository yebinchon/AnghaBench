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
 int /*<<< orphan*/  FUNC0 (unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int*,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int*,unsigned int*) ; 

int FUNC4(unsigned char *q,
  const unsigned char *n,
  const unsigned char *p)
{
  unsigned int work[96];
  unsigned char e[32];
  unsigned int i;
  for (i = 0;i < 32;++i) e[i] = n[i];
  e[0] &= 248;
  e[31] &= 127;
  e[31] |= 64;
  for (i = 0;i < 32;++i) work[i] = p[i];
  FUNC1(work,e);
  FUNC3(work + 32,work + 32);
  FUNC2(work + 64,work,work + 32);
  FUNC0(work + 64);
  for (i = 0;i < 32;++i) q[i] = work[64 + i];
  return 0;
}