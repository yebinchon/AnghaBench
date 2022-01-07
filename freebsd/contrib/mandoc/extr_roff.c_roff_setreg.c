
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff {int dummy; } ;


 int INT_MIN ;
 int roff_setregn (struct roff*,char const*,int ,int,char,int ) ;
 int strlen (char const*) ;

void
roff_setreg(struct roff *r, const char *name, int val, char sign)
{
 roff_setregn(r, name, strlen(name), val, sign, INT_MIN);
}
