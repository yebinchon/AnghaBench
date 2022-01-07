
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jailparam {int * jp_value; int * jp_name; } ;


 int JAIL_ERRMSGLEN ;
 int errno ;
 int jail_errmsg ;
 int jailparam_free (struct jailparam*,int) ;
 scalar_t__ jailparam_type (struct jailparam*) ;
 int memset (struct jailparam*,int ,int) ;
 int * strdup (char const*) ;
 int strerror_r (int ,int ,int ) ;

int
jailparam_init(struct jailparam *jp, const char *name)
{

 memset(jp, 0, sizeof(*jp));
 jp->jp_name = strdup(name);
 if (jp->jp_name == ((void*)0)) {
  strerror_r(errno, jail_errmsg, JAIL_ERRMSGLEN);
  return (-1);
 }
 if (jailparam_type(jp) < 0) {
  jailparam_free(jp, 1);
  jp->jp_name = ((void*)0);
  jp->jp_value = ((void*)0);
  return (-1);
 }
 return (0);
}
