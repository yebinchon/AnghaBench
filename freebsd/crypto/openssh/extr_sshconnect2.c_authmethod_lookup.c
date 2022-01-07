
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * name; } ;
typedef TYPE_1__ Authmethod ;


 TYPE_1__* authmethods ;
 int debug2 (char*,char const*) ;
 scalar_t__ strcmp (char const*,int *) ;

__attribute__((used)) static Authmethod *
authmethod_lookup(const char *name)
{
 Authmethod *method = ((void*)0);
 if (name != ((void*)0))
  for (method = authmethods; method->name != ((void*)0); method++)
   if (strcmp(name, method->name) == 0)
    return method;
 debug2("Unrecognized authentication method name: %s", name ? name : "NULL");
 return ((void*)0);
}
