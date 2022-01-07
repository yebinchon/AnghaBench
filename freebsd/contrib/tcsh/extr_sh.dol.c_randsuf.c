
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tcsh_number_t ;
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
typedef int Char ;


 int getpid () ;
 int gettimeofday (struct timeval*,int *) ;
 int * putn (int) ;

Char *
randsuf(void) {

 struct timeval tv;
 (void) gettimeofday(&tv, ((void*)0));
 return putn((((tcsh_number_t)tv.tv_sec) ^
     ((tcsh_number_t)tv.tv_usec) ^
     ((tcsh_number_t)getpid())) & 0x00ffffff);



}
