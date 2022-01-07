
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int omp_get_max_threads () ;
 int omp_get_num_threads () ;
 int omp_get_wtime () ;

int main() {
    omp_get_wtime();
    omp_get_num_threads();
    omp_get_max_threads();
    return 0;
}
