
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afswtch {struct afswtch* af_next; } ;


 struct afswtch* afs ;

void
af_register(struct afswtch *p)
{
 p->af_next = afs;
 afs = p;
}
