
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arch_MAX ;
 int * arch_names ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int
validate_arch(const char *arch)
{
 int i;

 for (i = 0; i < arch_MAX; i++)
  if (strcmp(arch, arch_names[i]) == 0)
   return 1;

 return 0;
}
