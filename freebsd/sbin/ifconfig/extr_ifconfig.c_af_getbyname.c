
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afswtch {int af_name; struct afswtch* af_next; } ;


 struct afswtch* afs ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static struct afswtch *
af_getbyname(const char *name)
{
 struct afswtch *afp;

 for (afp = afs; afp != ((void*)0); afp = afp->af_next)
  if (strcmp(afp->af_name, name) == 0)
   return afp;
 return ((void*)0);
}
