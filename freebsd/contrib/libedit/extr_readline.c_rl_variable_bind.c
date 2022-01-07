
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EL_BIND ;
 int e ;
 int el_set (int ,int ,char*,char const*,char const*,int *) ;

int
rl_variable_bind(const char *var, const char *value)
{




 return el_set(e, EL_BIND, "", var, value, ((void*)0)) == -1 ? 1 : 0;
}
