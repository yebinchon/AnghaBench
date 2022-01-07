
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void __bsd_iconvlist (int (*) (unsigned int,char const* const*,void*),void*) ;

void
iconvlist_compat(int (*a) (unsigned int, const char * const *, void *), void *b)
{
 return __bsd_iconvlist(a, b);
}
