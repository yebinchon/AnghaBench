
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct termp {size_t (* width ) (struct termp const*,char) ;} ;


 size_t stub1 (struct termp const*,char) ;

size_t
term_len(const struct termp *p, size_t sz)
{

 return (*p->width)(p, ' ') * sz;
}
