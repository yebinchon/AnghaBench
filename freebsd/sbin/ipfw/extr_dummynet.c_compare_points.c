
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct point {double prob; double delay; } ;



__attribute__((used)) static int
compare_points(const void *vp1, const void *vp2)
{
 const struct point *p1 = vp1;
 const struct point *p2 = vp2;
 double res = 0;

 res = p1->prob - p2->prob;
 if (res == 0)
  res = p1->delay - p2->delay;
 if (res < 0)
  return -1;
 else if (res > 0)
  return 1;
 else
  return 0;
}
