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
 int /*<<< orphan*/  FUNC0 (int*,int*,int) ; 
 int FUNC1 (unsigned char const*,int const*,int const*,int) ; 

__attribute__((used)) static
void
FUNC2(const unsigned char *T, const int *PA,
                int *first, int *middle, int *last,
                int *buf, int depth) {
  int *a, *b, *c, *bufend;
  int t;
  int r;

  bufend = buf + (middle - first) - 1;
  FUNC0(buf, first, middle - first);

  for(t = *(a = first), b = buf, c = middle;;) {
    r = FUNC1(T, PA + *b, PA + *c, depth);
    if(r < 0) {
      do {
        *a++ = *b;
        if(bufend <= b) { *bufend = t; return; }
        *b++ = *a;
      } while(*b < 0);
    } else if(r > 0) {
      do {
        *a++ = *c, *c++ = *a;
        if(last <= c) {
          while(b < bufend) { *a++ = *b, *b++ = *a; }
          *a = *b, *b = t;
          return;
        }
      } while(*c < 0);
    } else {
      *c = ~*c;
      do {
        *a++ = *b;
        if(bufend <= b) { *bufend = t; return; }
        *b++ = *a;
      } while(*b < 0);

      do {
        *a++ = *c, *c++ = *a;
        if(last <= c) {
          while(b < bufend) { *a++ = *b, *b++ = *a; }
          *a = *b, *b = t;
          return;
        }
      } while(*c < 0);
    }
  }
}