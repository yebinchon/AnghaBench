
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct uni {int * debug; } ;
typedef enum uni_verb { ____Placeholder_uni_verb } uni_verb ;



void
uni_set_debug(struct uni *uni, enum uni_verb fac, u_int level)
{
 uni->debug[fac] = level;
}
