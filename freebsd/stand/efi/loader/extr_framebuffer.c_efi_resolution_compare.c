
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct named_resolution {int * alias; int * name; } ;


 scalar_t__ strcasecmp (int *,char const*) ;

__attribute__((used)) static bool
efi_resolution_compare(struct named_resolution *res, const char *cmp)
{

 if (strcasecmp(res->name, cmp) == 0)
  return (1);
 if (res->alias != ((void*)0) && strcasecmp(res->alias, cmp) == 0)
  return (1);
 return (0);
}
