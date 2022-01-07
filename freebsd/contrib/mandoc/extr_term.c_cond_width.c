
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termp {size_t (* width ) (struct termp const*,int) ;} ;


 size_t stub1 (struct termp const*,int) ;

__attribute__((used)) static size_t
cond_width(const struct termp *p, int c, int *skip)
{

 if (*skip) {
  (*skip) = 0;
  return 0;
 } else
  return (*p->width)(p, c);
}
