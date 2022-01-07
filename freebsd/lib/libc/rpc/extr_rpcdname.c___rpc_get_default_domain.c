
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* get_default_domain () ;

int
__rpc_get_default_domain(char **domain)
{
 if ((*domain = get_default_domain()) != ((void*)0))
  return (0);
 return (-1);
}
