
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;



__attribute__((used)) static void
clk_compute_fract_div(
 uint64_t n_input, uint64_t d_input,
 uint64_t n_max, uint64_t d_max,
 uint64_t *n_out, uint64_t *d_out)
{
 uint64_t n_prev, d_prev;
 uint64_t n_cur, d_cur;
 uint64_t n_rem, d_rem;
 uint64_t tmp, fact;


 n_rem = n_input;
 d_rem = d_input;


 n_prev = 0;
 d_prev = 1;
 n_cur = 1;
 d_cur = 0;

 while (d_rem != 0 && n_cur < n_max && d_cur < d_max) {

  fact = n_rem / d_rem;


  tmp = d_rem;
  d_rem = n_rem % d_rem;
  n_rem = tmp;


  tmp = n_prev + fact * n_cur;
  n_prev = n_cur;
  n_cur = tmp;


  tmp = d_prev + fact * d_cur;
  d_prev = d_cur;
  d_cur = tmp;
 }

 if (n_cur > n_max || d_cur > d_max) {
  *n_out = n_prev;
  *d_out = d_prev;
 } else {
  *n_out = n_cur;
  *d_out = d_cur;
 }
}
