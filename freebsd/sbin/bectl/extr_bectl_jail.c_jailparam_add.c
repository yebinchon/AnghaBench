
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int jailparams ;
 int nvlist_add_string (int ,char const*,char const*) ;

__attribute__((used)) static void
jailparam_add(const char *name, const char *val)
{

 nvlist_add_string(jailparams, name, val);
}
