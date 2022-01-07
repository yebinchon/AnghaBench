
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SS_BLOCKSIZE ;
 scalar_t__ ss_compare (unsigned char const*,int*,int const*,int) ;
 int ss_inplacemerge (unsigned char const*,int const*,int*,int*,int*,int) ;
 int ss_insertionsort (unsigned char const*,int const*,int*,int*,int) ;
 int ss_isqrt (int) ;
 int ss_mintrosort (unsigned char const*,int const*,int*,int*,int) ;
 int ss_swapmerge (unsigned char const*,int const*,int*,int*,int*,int*,int,int) ;

__attribute__((used)) static
void
sssort(const unsigned char *T, const int *PA,
       int *first, int *last,
       int *buf, int bufsize,
       int depth, int n, int lastsuffix) {
  int *a;




  int i;

  if(lastsuffix != 0) { ++first; }


  ss_mintrosort(T, PA, first, last, depth);
  if(lastsuffix != 0) {

    int PAi[2]; PAi[0] = PA[*(first - 1)], PAi[1] = n - 2;
    for(a = first, i = *(first - 1);
        (a < last) && ((*a < 0) || (0 < ss_compare(T, &(PAi[0]), PA + *a, depth)));
        ++a) {
      *(a - 1) = *a;
    }
    *(a - 1) = i;
  }
}
