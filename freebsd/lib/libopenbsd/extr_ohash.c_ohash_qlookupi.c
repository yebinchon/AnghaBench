
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ohash {int dummy; } ;


 int ohash_interval (char const*,char const**) ;
 unsigned int ohash_lookup_interval (struct ohash*,char const*,char const*,int ) ;

unsigned int
ohash_qlookupi(struct ohash *h, const char *s, const char **e)
{
 uint32_t hv;

 hv = ohash_interval(s, e);
 return ohash_lookup_interval(h, s, *e, hv);
}
