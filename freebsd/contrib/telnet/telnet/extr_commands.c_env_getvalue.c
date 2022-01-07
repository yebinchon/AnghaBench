
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct env_lst {unsigned char* value; } ;


 struct env_lst* env_find (unsigned char const*) ;

unsigned char *
env_getvalue(const unsigned char *var)
{
 struct env_lst *ep;

 if ((ep = env_find(var)))
  return(ep->value);
 return(((void*)0));
}
