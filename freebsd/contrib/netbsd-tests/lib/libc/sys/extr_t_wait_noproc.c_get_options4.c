
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int const WALLSIG ;
 int const WALTSIG ;
 int const WCONTINUED ;
 int const WEXITED ;
 int const WNOWAIT ;
 int const WSTOPPED ;
 int const WTRAPPED ;
 int const WUNTRACED ;
 size_t __BIT (size_t) ;
 int const __WALL ;
 int const __WCLONE ;
 size_t __arraycount (int const*) ;

__attribute__((used)) static int
get_options4(size_t pos)
{
 int rv = 0;
 size_t n;

 const int special[] = {
  0,






 };

 const int matrix[] = {
  WNOWAIT,
  WEXITED,
  WUNTRACED,
  WSTOPPED,
  WTRAPPED,
  WCONTINUED
 };

 const size_t M = (1 << __arraycount(special)) - 1;

 if (pos < __arraycount(special))
  return special[pos];

 pos -= __arraycount(special);

 ++pos;

 if (pos > M)
  return -1;

 for (n = 0; n < __arraycount(special); n++) {
  if (pos & __BIT(n))
   rv |= matrix[n];
 }

 return rv;
}
