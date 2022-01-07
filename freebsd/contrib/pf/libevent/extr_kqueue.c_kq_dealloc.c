
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kqop {scalar_t__ kq; struct kqop* events; struct kqop* changes; } ;


 int close (scalar_t__) ;
 int free (struct kqop*) ;
 int memset (struct kqop*,int ,int) ;

void
kq_dealloc(void *arg)
{
 struct kqop *kqop = arg;

 if (kqop->changes)
  free(kqop->changes);
 if (kqop->events)
  free(kqop->events);
 if (kqop->kq)
  close(kqop->kq);
 memset(kqop, 0, sizeof(struct kqop));
 free(kqop);
}
