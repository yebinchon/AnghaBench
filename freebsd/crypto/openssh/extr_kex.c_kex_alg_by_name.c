
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kexalg {int * name; } ;


 struct kexalg* kexalgs ;
 scalar_t__ strcmp (int *,char const*) ;

__attribute__((used)) static const struct kexalg *
kex_alg_by_name(const char *name)
{
 const struct kexalg *k;

 for (k = kexalgs; k->name != ((void*)0); k++) {
  if (strcmp(k->name, name) == 0)
   return k;
 }
 return ((void*)0);
}
