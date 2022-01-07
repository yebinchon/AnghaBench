
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct variant {int arch; unsigned long mach; scalar_t__ name; } ;
typedef enum bfd_architecture { ____Placeholder_bfd_architecture } bfd_architecture ;


 struct variant* variants ;

__attribute__((used)) static const struct variant *
find_variant_by_arch (enum bfd_architecture arch, unsigned long mach)
{
  const struct variant *v;

  for (v = variants; v->name; v++)
    if (arch == v->arch && mach == v->mach)
      return v;

  return ((void*)0);
}
