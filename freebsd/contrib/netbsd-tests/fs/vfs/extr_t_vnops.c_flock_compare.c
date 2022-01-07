
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flock {int l_start; } ;



__attribute__((used)) static int
flock_compare(const void *p, const void *q)
{
 int a = ((const struct flock *)p)->l_start;
 int b = ((const struct flock *)q)->l_start;
 return a < b ? -1 : (a > b ? 1 : 0);
}
