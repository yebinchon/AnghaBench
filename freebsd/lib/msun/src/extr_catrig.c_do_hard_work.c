
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double A_crossover ;
 double B_crossover ;
 int DBL_EPSILON ;
 double FOUR_SQRT_MIN ;
 double f (double,double,double) ;
 int fabs (double) ;
 double hypot (double,double) ;
 double log (double) ;
 double log1p (double) ;
 double sqrt (int) ;

__attribute__((used)) static inline void
do_hard_work(double x, double y, double *rx, int *B_is_usable, double *B,
    double *sqrt_A2my2, double *new_y)
{
 double R, S, A;
 double Am1, Amy;

 R = hypot(x, y + 1);
 S = hypot(x, y - 1);


 A = (R + S) / 2;





 if (A < 1)
  A = 1;

 if (A < A_crossover) {




  if (y == 1 && x < DBL_EPSILON * DBL_EPSILON / 128) {




   *rx = sqrt(x);
  } else if (x >= DBL_EPSILON * fabs(y - 1)) {




   Am1 = f(x, 1 + y, R) + f(x, 1 - y, S);
   *rx = log1p(Am1 + sqrt(Am1 * (A + 1)));
  } else if (y < 1) {




   *rx = x / sqrt((1 - y) * (1 + y));
  } else {



   *rx = log1p((y - 1) + sqrt((y - 1) * (y + 1)));
  }
 } else {
  *rx = log(A + sqrt(A * A - 1));
 }

 *new_y = y;

 if (y < FOUR_SQRT_MIN) {





  *B_is_usable = 0;
  *sqrt_A2my2 = A * (2 / DBL_EPSILON);
  *new_y = y * (2 / DBL_EPSILON);
  return;
 }


 *B = y / A;
 *B_is_usable = 1;

 if (*B > B_crossover) {
  *B_is_usable = 0;




  if (y == 1 && x < DBL_EPSILON / 128) {




   *sqrt_A2my2 = sqrt(x) * sqrt((A + y) / 2);
  } else if (x >= DBL_EPSILON * fabs(y - 1)) {






   Amy = f(x, y + 1, R) + f(x, y - 1, S);
   *sqrt_A2my2 = sqrt(Amy * (A + y));
  } else if (y > 1) {







   *sqrt_A2my2 = x * (4 / DBL_EPSILON / DBL_EPSILON) * y /
       sqrt((y + 1) * (y - 1));
   *new_y = y * (4 / DBL_EPSILON / DBL_EPSILON);
  } else {




   *sqrt_A2my2 = sqrt((1 - y) * (1 + y));
  }
 }
}
