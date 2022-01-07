
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sauchar_t ;
typedef int saint_t ;
typedef int saidx_t ;


 int BUCKET_A_SIZE ;
 int BUCKET_B_SIZE ;
 int construct_SA (scalar_t__ const*,int*,int*,int*,int,int) ;
 int free (int*) ;
 scalar_t__ malloc (int) ;
 int sort_typeBstar (scalar_t__ const*,int*,int*,int*,int) ;

saint_t
divsufsort(const sauchar_t *T, saidx_t *SA, saidx_t n) {
  saidx_t *bucket_A, *bucket_B;
  saidx_t m;
  saint_t err = 0;


  if((T == ((void*)0)) || (SA == ((void*)0)) || (n < 0)) { return -1; }
  else if(n == 0) { return 0; }
  else if(n == 1) { SA[0] = 0; return 0; }
  else if(n == 2) { m = (T[0] < T[1]); SA[m ^ 1] = 0, SA[m] = 1; return 0; }

  bucket_A = (saidx_t *)malloc(BUCKET_A_SIZE * sizeof(saidx_t));
  bucket_B = (saidx_t *)malloc(BUCKET_B_SIZE * sizeof(saidx_t));


  if((bucket_A != ((void*)0)) && (bucket_B != ((void*)0))) {
    m = sort_typeBstar(T, SA, bucket_A, bucket_B, n);
    construct_SA(T, SA, bucket_A, bucket_B, n, m);
  } else {
    err = -2;
  }

  free(bucket_B);
  free(bucket_A);

  return err;
}
