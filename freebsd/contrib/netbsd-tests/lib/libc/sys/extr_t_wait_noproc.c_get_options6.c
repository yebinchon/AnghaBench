
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int const WCONTINUED ;
 int const WEXITED ;
 int const WNOWAIT ;
 int const WSTOPPED ;
 int const WTRAPPED ;
 int const WUNTRACED ;
 size_t __BIT (size_t) ;
 size_t __arraycount (int const*) ;

__attribute__((used)) static int
get_options6(size_t pos)
{
 int rv = 0;
 size_t n;







 const int matrix[] = {
  WNOWAIT,
  WEXITED,
  WUNTRACED,
  WSTOPPED,
  WTRAPPED,
  WCONTINUED
 };

 const size_t M = (1 << __arraycount(matrix)) - 1;


 pos+=2;

 if (pos > M)
  return -1;

 for (n = 0; n < __arraycount(matrix); n++) {
  if (pos & __BIT(n))
   rv |= matrix[n];
 }

 return rv;
}
