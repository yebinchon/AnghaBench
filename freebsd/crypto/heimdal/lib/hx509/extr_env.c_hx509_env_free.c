
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * hx509_env ;


 int env_free (int *) ;

void
hx509_env_free(hx509_env *env)
{
    if (*env)
 env_free(*env);
    *env = ((void*)0);
}
