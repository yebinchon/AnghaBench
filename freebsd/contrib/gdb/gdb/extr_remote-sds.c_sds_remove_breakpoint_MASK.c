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
typedef  scalar_t__ addr ;
typedef  int CORE_ADDR ;

/* Variables and functions */
 int PBUFSIZ ; 
 int FUNC0 (unsigned char*,int) ; 

__attribute__((used)) static int
FUNC1 (CORE_ADDR addr, char *contents_cache)
{
  int i, retlen;
  unsigned char *p, buf[PBUFSIZ];

  p = buf;
  *p++ = 17;
  *p++ = 0;
  *p++ = (int) (addr >> 24) & 0xff;
  *p++ = (int) (addr >> 16) & 0xff;
  *p++ = (int) (addr >> 8) & 0xff;
  *p++ = (int) (addr) & 0xff;
  for (i = 0; i < 4; ++i)
    *p++ = contents_cache[i];

  retlen = FUNC0 (buf, p - buf);

  return 0;
}