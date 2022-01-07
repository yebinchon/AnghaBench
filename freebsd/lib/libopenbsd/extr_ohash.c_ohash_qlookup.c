
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ohash {int dummy; } ;


 unsigned int ohash_qlookupi (struct ohash*,char const*,char const**) ;

unsigned int
ohash_qlookup(struct ohash *h, const char *s)
{
 const char *e = ((void*)0);
 return ohash_qlookupi(h, s, &e);
}
