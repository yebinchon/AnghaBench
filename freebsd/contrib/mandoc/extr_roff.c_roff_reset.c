
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct roff {int format; int options; char control; char escape; } ;


 int MPARSE_MAN ;
 int MPARSE_MDOC ;
 int roff_free1 (struct roff*) ;
 scalar_t__ roffce_lines ;
 int * roffce_node ;
 scalar_t__ roffit_lines ;
 int * roffit_macro ;

void
roff_reset(struct roff *r)
{
 roff_free1(r);
 r->format = r->options & (MPARSE_MDOC | MPARSE_MAN);
 r->control = '\0';
 r->escape = '\\';
 roffce_lines = 0;
 roffce_node = ((void*)0);
 roffit_lines = 0;
 roffit_macro = ((void*)0);
}
