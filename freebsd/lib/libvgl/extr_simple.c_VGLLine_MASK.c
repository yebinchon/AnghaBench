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
typedef  int /*<<< orphan*/  u_long ;
typedef  int /*<<< orphan*/  VGLBitmap ;

/* Variables and functions */
 int FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ) ; 

void
FUNC3(VGLBitmap *object, int x1, int y1, int x2, int y2, u_long color)
{
  int dx, dy, incr1, incr2, D, x, y, xend, c, pixels_left;
  int sign_x, sign_y, step, reverse, i;

  dx = FUNC0(x2, x1, sign_x);
  dy = FUNC0(y2, y1, sign_y);
  /* decide increment sign by the slope sign */
  if (sign_x == sign_y)
    step = 1;
  else
    step = -1;

  if (dy > dx) {	/* chooses axis of greatest movement (make dx) */
    FUNC1(x1, y1);
    FUNC1(x2, y2);
    FUNC1(dx, dy);
    reverse = 1;
  } else
    reverse = 0;
  /* note error check for dx==0 should be included here */
  if (x1 > x2) {      /* start from the smaller coordinate */
    x = x2;
    y = y2;
/*  x1 = x1;
    y1 = y1; */
  } else {
    x = x1;
    y = y1;
    x1 = x2;
    y1 = y2;
  }


  /* Note dx=n implies 0 - n or (dx+1) pixels to be set */
  /* Go round loop dx/4 times then plot last 0,1,2 or 3 pixels */
  /* In fact (dx-1)/4 as 2 pixels are already plotted */
  xend = (dx - 1) / 4;
  pixels_left = (dx - 1) % 4;  /* number of pixels left over at the
           * end */
  FUNC2(object, x, y, reverse, color);
  if (pixels_left < 0)
    return;      /* plot only one pixel for zero length
           * vectors */
  FUNC2(object, x1, y1, reverse, color);  /* plot first two points */
  incr2 = 4 * dy - 2 * dx;
  if (incr2 < 0) {    /* slope less than 1/2 */
    c = 2 * dy;
    incr1 = 2 * c;
    D = incr1 - dx;

    for (i = 0; i < xend; i++) {  /* plotting loop */
      ++x;
      --x1;
      if (D < 0) {
        /* pattern 1 forwards */
        FUNC2(object, x, y, reverse, color);
        FUNC2(object, ++x, y, reverse, color);
        /* pattern 1 backwards */
        FUNC2(object, x1, y1, reverse, color);
        FUNC2(object, --x1, y1, reverse, color);
        D += incr1;
      } else {
        if (D < c) {
          /* pattern 2 forwards */
          FUNC2(object, x, y, reverse, color);
          FUNC2(object, ++x, y += step, reverse,
              color);
          /* pattern 2 backwards */
          FUNC2(object, x1, y1, reverse, color);
          FUNC2(object, --x1, y1 -= step, reverse,
              color);
        } else {
          /* pattern 3 forwards */
          FUNC2(object, x, y += step, reverse, color);
          FUNC2(object, ++x, y, reverse, color);
          /* pattern 3 backwards */
          FUNC2(object, x1, y1 -= step, reverse,
              color);
          FUNC2(object, --x1, y1, reverse, color);
        }
        D += incr2;
      }
    }      /* end for */

    /* plot last pattern */
    if (pixels_left) {
      if (D < 0) {
        FUNC2(object, ++x, y, reverse, color);  /* pattern 1 */
        if (pixels_left > 1)
          FUNC2(object, ++x, y, reverse, color);
        if (pixels_left > 2)
          FUNC2(object, --x1, y1, reverse, color);
      } else {
        if (D < c) {
          FUNC2(object, ++x, y, reverse, color);  /* pattern 2  */
          if (pixels_left > 1)
            FUNC2(object, ++x, y += step, reverse, color);
          if (pixels_left > 2)
            FUNC2(object, --x1, y1, reverse, color);
        } else {
          /* pattern 3 */
          FUNC2(object, ++x, y += step, reverse, color);
          if (pixels_left > 1)
            FUNC2(object, ++x, y, reverse, color);
          if (pixels_left > 2)
            FUNC2(object, --x1, y1 -= step, reverse, color);
        }
      }
    }      /* end if pixels_left */
  }
  /* end slope < 1/2 */
  else {        /* slope greater than 1/2 */
    c = 2 * (dy - dx);
    incr1 = 2 * c;
    D = incr1 + dx;
    for (i = 0; i < xend; i++) {
      ++x;
      --x1;
      if (D > 0) {
        /* pattern 4 forwards */
        FUNC2(object, x, y += step, reverse, color);
        FUNC2(object, ++x, y += step, reverse, color);
        /* pattern 4 backwards */
        FUNC2(object, x1, y1 -= step, reverse, color);
        FUNC2(object, --x1, y1 -= step, reverse, color);
        D += incr1;
      } else {
        if (D < c) {
          /* pattern 2 forwards */
          FUNC2(object, x, y, reverse, color);
          FUNC2(object, ++x, y += step, reverse,
              color);

          /* pattern 2 backwards */
          FUNC2(object, x1, y1, reverse, color);
          FUNC2(object, --x1, y1 -= step, reverse,
              color);
        } else {
          /* pattern 3 forwards */
          FUNC2(object, x, y += step, reverse, color);
          FUNC2(object, ++x, y, reverse, color);
          /* pattern 3 backwards */
          FUNC2(object, x1, y1 -= step, reverse, color);
          FUNC2(object, --x1, y1, reverse, color);
        }
        D += incr2;
      }
    }      /* end for */
    /* plot last pattern */
    if (pixels_left) {
      if (D > 0) {
        FUNC2(object, ++x, y += step, reverse, color);  /* pattern 4 */
        if (pixels_left > 1)
          FUNC2(object, ++x, y += step, reverse,
              color);
        if (pixels_left > 2)
          FUNC2(object, --x1, y1 -= step, reverse,
              color);
      } else {
        if (D < c) {
          FUNC2(object, ++x, y, reverse, color);  /* pattern 2  */
          if (pixels_left > 1)
            FUNC2(object, ++x, y += step, reverse, color);
          if (pixels_left > 2)
            FUNC2(object, --x1, y1, reverse, color);
        } else {
          /* pattern 3 */
          FUNC2(object, ++x, y += step, reverse, color);
          if (pixels_left > 1)
            FUNC2(object, ++x, y, reverse, color);
          if (pixels_left > 2) {
            if (D > c)  /* step 3 */
              FUNC2(object, --x1, y1 -= step, reverse, color);
            else  /* step 2 */
              FUNC2(object, --x1, y1, reverse, color);
          }
        }
      }
    }
  }
}