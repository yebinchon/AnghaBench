
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* fn_tilde_expand (char*) ;

char *
tilde_expand(char *name)
{
 return fn_tilde_expand(name);
}
