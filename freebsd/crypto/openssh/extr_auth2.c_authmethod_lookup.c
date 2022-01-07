
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__* enabled; int name; } ;
typedef TYPE_1__ Authmethod ;
typedef int Authctxt ;


 scalar_t__ auth2_method_allowed (int *,int ,int *) ;
 TYPE_1__** authmethods ;
 int debug2 (char*,char const*) ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static Authmethod *
authmethod_lookup(Authctxt *authctxt, const char *name)
{
 int i;

 if (name != ((void*)0))
  for (i = 0; authmethods[i] != ((void*)0); i++)
   if (authmethods[i]->enabled != ((void*)0) &&
       *(authmethods[i]->enabled) != 0 &&
       strcmp(name, authmethods[i]->name) == 0 &&
       auth2_method_allowed(authctxt,
       authmethods[i]->name, ((void*)0)))
    return authmethods[i];
 debug2("Unrecognized authentication method name: %s",
     name ? name : "NULL");
 return ((void*)0);
}
