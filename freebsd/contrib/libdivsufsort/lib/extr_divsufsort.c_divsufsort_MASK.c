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
typedef  int saint_t ;
typedef  int saidx_t ;

/* Variables and functions */
 int BUCKET_A_SIZE ; 
 int BUCKET_B_SIZE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__ const*,int*,int*,int*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (scalar_t__ const*,int*,int*,int*,int) ; 

saint_t
FUNC4(const sauchar_t *T, saidx_t *SA, saidx_t n) {
  saidx_t *bucket_A, *bucket_B;
  saidx_t m;
  saint_t err = 0;

  /* Check arguments. */
  if((T == NULL) || (SA == NULL) || (n < 0)) { return -1; }
  else if(n == 0) { return 0; }
  else if(n == 1) { SA[0] = 0; return 0; }
  else if(n == 2) { m = (T[0] < T[1]); SA[m ^ 1] = 0, SA[m] = 1; return 0; }

  bucket_A = (saidx_t *)FUNC2(BUCKET_A_SIZE * sizeof(saidx_t));
  bucket_B = (saidx_t *)FUNC2(BUCKET_B_SIZE * sizeof(saidx_t));

  /* Suffixsort. */
  if((bucket_A != NULL) && (bucket_B != NULL)) {
    m = FUNC3(T, SA, bucket_A, bucket_B, n);
    FUNC0(T, SA, bucket_A, bucket_B, n, m);
  } else {
    err = -2;
  }

  FUNC1(bucket_B);
  FUNC1(bucket_A);

  return err;
}