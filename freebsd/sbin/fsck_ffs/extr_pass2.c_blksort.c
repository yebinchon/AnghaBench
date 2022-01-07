
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inoinfo {int* i_blks; } ;



__attribute__((used)) static int
blksort(const void *arg1, const void *arg2)
{

 return ((*(struct inoinfo * const *)arg1)->i_blks[0] -
  (*(struct inoinfo * const *)arg2)->i_blks[0]);
}
