
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int jailparams ;
 int nvlist_remove_all (int ,char const*) ;

__attribute__((used)) static int
jailparam_del(const char *name)
{

 nvlist_remove_all(jailparams, name);
 return (0);
}
