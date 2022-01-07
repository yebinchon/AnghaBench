
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sauchar_t ;
typedef scalar_t__ saint_t ;
typedef size_t saidx_t ;



__attribute__((used)) static
int
_compare(const sauchar_t *T, saidx_t Tsize,
         const sauchar_t *P, saidx_t Psize,
         saidx_t suf, saidx_t *match) {
  saidx_t i, j;
  saint_t r;
  for(i = suf + *match, j = *match, r = 0;
      (i < Tsize) && (j < Psize) && ((r = T[i] - P[j]) == 0); ++i, ++j) { }
  *match = j;
  return (r == 0) ? -(j != Psize) : r;
}
