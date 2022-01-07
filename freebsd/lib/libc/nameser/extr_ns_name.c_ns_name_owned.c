
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* ns_namemap_ct ;
struct TYPE_4__ {scalar_t__ len; scalar_t__ base; } ;


 scalar_t__ strncasecmp (char const*,char const*,scalar_t__) ;

int
ns_name_owned(ns_namemap_ct a, int an, ns_namemap_ct b, int bn) {

 if (an < bn)
  return (0);


 while (bn > 0) {
  if (a->len != b->len ||
      strncasecmp((const char *) a->base,
    (const char *) b->base, a->len) != 0)
   return (0);
  a++, an--;
  b++, bn--;
 }


 return (1);
}
