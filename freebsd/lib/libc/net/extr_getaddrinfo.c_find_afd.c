
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afd {int a_af; } ;


 int PF_UNSPEC ;
 struct afd* afdl ;

__attribute__((used)) static const struct afd *
find_afd(int af)
{
 const struct afd *afd;

 if (af == PF_UNSPEC)
  return ((void*)0);
 for (afd = afdl; afd->a_af; afd++) {
  if (afd->a_af == af)
   return afd;
 }
 return ((void*)0);
}
