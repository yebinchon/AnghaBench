#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned char* window; int position; } ;
struct rar {TYPE_1__ lzss; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char*,int) ; 

__attribute__((used)) static inline void
FUNC4(struct rar *rar, int offset, int length)
{
  int dstoffs = FUNC0(&rar->lzss);
  int srcoffs = (dstoffs - offset) & FUNC1(&rar->lzss);
  int l, li, remaining;
  unsigned char *d, *s;

  remaining = length;
  while (remaining > 0) {
    l = remaining;
    if (dstoffs > srcoffs) {
      if (l > FUNC2(&rar->lzss) - dstoffs)
        l = FUNC2(&rar->lzss) - dstoffs;
    } else {
      if (l > FUNC2(&rar->lzss) - srcoffs)
        l = FUNC2(&rar->lzss) - srcoffs;
    }
    d = &(rar->lzss.window[dstoffs]);
    s = &(rar->lzss.window[srcoffs]);
    if ((dstoffs + l < srcoffs) || (srcoffs + l < dstoffs))
      FUNC3(d, s, l);
    else {
      for (li = 0; li < l; li++)
        d[li] = s[li];
    }
    remaining -= l;
    dstoffs = (dstoffs + l) & FUNC1(&(rar->lzss));
    srcoffs = (srcoffs + l) & FUNC1(&(rar->lzss));
  }
  rar->lzss.position += length;
}