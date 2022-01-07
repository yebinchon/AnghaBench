
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t sauchar_t ;
typedef int saint_t ;
typedef int saidx_t ;


 int ALPHABET_SIZE ;
 size_t binarysearch_lower (int*,int,int) ;
 int free (int*) ;
 scalar_t__ malloc (size_t) ;

saint_t
inverse_bw_transform(const sauchar_t *T, sauchar_t *U, saidx_t *A,
                     saidx_t n, saidx_t idx) {
  saidx_t C[ALPHABET_SIZE];
  sauchar_t D[ALPHABET_SIZE];
  saidx_t *B;
  saidx_t i, p;
  saint_t c, d;


  if((T == ((void*)0)) || (U == ((void*)0)) || (n < 0) || (idx < 0) ||
     (n < idx) || ((0 < n) && (idx == 0))) {
    return -1;
  }
  if(n <= 1) { return 0; }

  if((B = A) == ((void*)0)) {

    if((B = (saidx_t *)malloc((size_t)n * sizeof(saidx_t))) == ((void*)0)) { return -2; }
  }


  for(c = 0; c < ALPHABET_SIZE; ++c) { C[c] = 0; }
  for(i = 0; i < n; ++i) { ++C[T[i]]; }
  for(c = 0, d = 0, i = 0; c < ALPHABET_SIZE; ++c) {
    p = C[c];
    if(0 < p) {
      C[c] = i;
      D[d++] = (sauchar_t)c;
      i += p;
    }
  }
  for(i = 0; i < idx; ++i) { B[C[T[i]]++] = i; }
  for( ; i < n; ++i) { B[C[T[i]]++] = i + 1; }
  for(c = 0; c < d; ++c) { C[c] = C[D[c]]; }
  for(i = 0, p = idx; i < n; ++i) {
    U[i] = D[binarysearch_lower(C, d, p)];
    p = B[p - 1];
  }

  if(A == ((void*)0)) {

    free(B);
  }

  return 0;
}
