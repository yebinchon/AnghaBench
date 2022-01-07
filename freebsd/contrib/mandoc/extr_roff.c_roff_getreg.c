
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff {int dummy; } ;


 int roff_getregn (struct roff*,char const*,int ,char) ;
 int strlen (char const*) ;

int
roff_getreg(struct roff *r, const char *name)
{
 return roff_getregn(r, name, strlen(name), '\0');
}
