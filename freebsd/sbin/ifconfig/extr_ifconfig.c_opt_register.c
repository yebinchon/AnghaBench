
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {struct option* next; } ;


 struct option* opts ;

void
opt_register(struct option *p)
{
 p->next = opts;
 opts = p;
}
