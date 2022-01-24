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
typedef  scalar_t__ sauchar_t ;
typedef  int saidx_t ;

/* Variables and functions */
 int BUCKET_A_SIZE ; 
 int BUCKET_B_SIZE ; 
 int FUNC0 (scalar_t__ const*,int*,int*,int*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (scalar_t__ const*,int*,int*,int*,int) ; 

saidx_t
FUNC4(const sauchar_t *T, sauchar_t *U, saidx_t *A, saidx_t n) {
  saidx_t *B;
  saidx_t *bucket_A, *bucket_B;
  saidx_t m, pidx, i;

  /* Check arguments. */
  if((T == NULL) || (U == NULL) || (n < 0)) { return -1; }
  else if(n <= 1) { if(n == 1) { U[0] = T[0]; } return n; }

  if((B = A) == NULL) { B = (saidx_t *)FUNC2((size_t)(n + 1) * sizeof(saidx_t)); }
  bucket_A = (saidx_t *)FUNC2(BUCKET_A_SIZE * sizeof(saidx_t));
  bucket_B = (saidx_t *)FUNC2(BUCKET_B_SIZE * sizeof(saidx_t));

  /* Burrows-Wheeler Transform. */
  if((B != NULL) && (bucket_A != NULL) && (bucket_B != NULL)) {
    m = FUNC3(T, B, bucket_A, bucket_B, n);
    pidx = FUNC0(T, B, bucket_A, bucket_B, n, m);

    /* Copy to output string. */
    U[0] = T[n - 1];
    for(i = 0; i < pidx; ++i) { U[i + 1] = (sauchar_t)B[i]; }
    for(i += 1; i < n; ++i) { U[i] = (sauchar_t)B[i]; }
    pidx += 1;
  } else {
    pidx = -2;
  }

  FUNC1(bucket_B);
  FUNC1(bucket_A);
  if(A == NULL) { FUNC1(B); }

  return pidx;
}