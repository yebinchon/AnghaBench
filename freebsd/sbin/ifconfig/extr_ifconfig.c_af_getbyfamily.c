
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afswtch {int af_af; struct afswtch* af_next; } ;


 struct afswtch* afs ;

__attribute__((used)) static struct afswtch *
af_getbyfamily(int af)
{
 struct afswtch *afp;

 for (afp = afs; afp != ((void*)0); afp = afp->af_next)
  if (afp->af_af == af)
   return afp;
 return ((void*)0);
}
