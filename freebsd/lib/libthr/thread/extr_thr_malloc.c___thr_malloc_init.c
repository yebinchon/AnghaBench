
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_SIZE ;
 int _thr_umutex_init (int *) ;
 int getpagesizes (int *,int ) ;
 int nitems (int *) ;
 int npagesizes ;
 int * pagesizes ;
 int * pagesizes_d ;
 int thr_malloc_umtx ;

void
__thr_malloc_init(void)
{

 if (npagesizes != 0)
  return;
 npagesizes = getpagesizes(pagesizes_d, nitems(pagesizes_d));
 if (npagesizes == -1) {
  npagesizes = 1;
  pagesizes_d[0] = PAGE_SIZE;
 }
 pagesizes = pagesizes_d;
 _thr_umutex_init(&thr_malloc_umtx);
}
