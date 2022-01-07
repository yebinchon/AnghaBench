
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tval_t ;
struct timeval {int tv_usec; scalar_t__ tv_sec; } ;


 int gettimeofday (struct timeval*,int *) ;

__attribute__((used)) static inline tval_t
GETUSECS(void) {
 struct timeval tval;

 (void)gettimeofday(&tval, ((void*)0));
 return (tval_t)tval.tv_sec * 1000000 + tval.tv_usec;
}
