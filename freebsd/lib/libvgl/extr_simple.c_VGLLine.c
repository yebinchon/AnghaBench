
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int VGLBitmap ;


 int SL_ABSOLUTE (int,int,int) ;
 int SL_SWAP (int,int) ;
 int plot (int *,int,int,int,int ) ;

void
VGLLine(VGLBitmap *object, int x1, int y1, int x2, int y2, u_long color)
{
  int dx, dy, incr1, incr2, D, x, y, xend, c, pixels_left;
  int sign_x, sign_y, step, reverse, i;

  dx = SL_ABSOLUTE(x2, x1, sign_x);
  dy = SL_ABSOLUTE(y2, y1, sign_y);

  if (sign_x == sign_y)
    step = 1;
  else
    step = -1;

  if (dy > dx) {
    SL_SWAP(x1, y1);
    SL_SWAP(x2, y2);
    SL_SWAP(dx, dy);
    reverse = 1;
  } else
    reverse = 0;

  if (x1 > x2) {
    x = x2;
    y = y2;


  } else {
    x = x1;
    y = y1;
    x1 = x2;
    y1 = y2;
  }





  xend = (dx - 1) / 4;
  pixels_left = (dx - 1) % 4;

  plot(object, x, y, reverse, color);
  if (pixels_left < 0)
    return;

  plot(object, x1, y1, reverse, color);
  incr2 = 4 * dy - 2 * dx;
  if (incr2 < 0) {
    c = 2 * dy;
    incr1 = 2 * c;
    D = incr1 - dx;

    for (i = 0; i < xend; i++) {
      ++x;
      --x1;
      if (D < 0) {

        plot(object, x, y, reverse, color);
        plot(object, ++x, y, reverse, color);

        plot(object, x1, y1, reverse, color);
        plot(object, --x1, y1, reverse, color);
        D += incr1;
      } else {
        if (D < c) {

          plot(object, x, y, reverse, color);
          plot(object, ++x, y += step, reverse,
              color);

          plot(object, x1, y1, reverse, color);
          plot(object, --x1, y1 -= step, reverse,
              color);
        } else {

          plot(object, x, y += step, reverse, color);
          plot(object, ++x, y, reverse, color);

          plot(object, x1, y1 -= step, reverse,
              color);
          plot(object, --x1, y1, reverse, color);
        }
        D += incr2;
      }
    }


    if (pixels_left) {
      if (D < 0) {
        plot(object, ++x, y, reverse, color);
        if (pixels_left > 1)
          plot(object, ++x, y, reverse, color);
        if (pixels_left > 2)
          plot(object, --x1, y1, reverse, color);
      } else {
        if (D < c) {
          plot(object, ++x, y, reverse, color);
          if (pixels_left > 1)
            plot(object, ++x, y += step, reverse, color);
          if (pixels_left > 2)
            plot(object, --x1, y1, reverse, color);
        } else {

          plot(object, ++x, y += step, reverse, color);
          if (pixels_left > 1)
            plot(object, ++x, y, reverse, color);
          if (pixels_left > 2)
            plot(object, --x1, y1 -= step, reverse, color);
        }
      }
    }
  }

  else {
    c = 2 * (dy - dx);
    incr1 = 2 * c;
    D = incr1 + dx;
    for (i = 0; i < xend; i++) {
      ++x;
      --x1;
      if (D > 0) {

        plot(object, x, y += step, reverse, color);
        plot(object, ++x, y += step, reverse, color);

        plot(object, x1, y1 -= step, reverse, color);
        plot(object, --x1, y1 -= step, reverse, color);
        D += incr1;
      } else {
        if (D < c) {

          plot(object, x, y, reverse, color);
          plot(object, ++x, y += step, reverse,
              color);


          plot(object, x1, y1, reverse, color);
          plot(object, --x1, y1 -= step, reverse,
              color);
        } else {

          plot(object, x, y += step, reverse, color);
          plot(object, ++x, y, reverse, color);

          plot(object, x1, y1 -= step, reverse, color);
          plot(object, --x1, y1, reverse, color);
        }
        D += incr2;
      }
    }

    if (pixels_left) {
      if (D > 0) {
        plot(object, ++x, y += step, reverse, color);
        if (pixels_left > 1)
          plot(object, ++x, y += step, reverse,
              color);
        if (pixels_left > 2)
          plot(object, --x1, y1 -= step, reverse,
              color);
      } else {
        if (D < c) {
          plot(object, ++x, y, reverse, color);
          if (pixels_left > 1)
            plot(object, ++x, y += step, reverse, color);
          if (pixels_left > 2)
            plot(object, --x1, y1, reverse, color);
        } else {

          plot(object, ++x, y += step, reverse, color);
          if (pixels_left > 1)
            plot(object, ++x, y, reverse, color);
          if (pixels_left > 2) {
            if (D > c)
              plot(object, --x1, y1 -= step, reverse, color);
            else
              plot(object, --x1, y1, reverse, color);
          }
        }
      }
    }
  }
}
