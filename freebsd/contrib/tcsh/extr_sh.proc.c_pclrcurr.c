
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct process {int dummy; } ;


 struct process* pcurrent ;
 struct process* pgetcurr (struct process*) ;
 struct process* pprevious ;

__attribute__((used)) static void
pclrcurr(struct process *pp)
{
    if (pp == pcurrent) {
 if (pprevious != ((void*)0)) {
     pcurrent = pprevious;
     pprevious = pgetcurr(pp);
 }
 else {
     pcurrent = pgetcurr(pp);
     pprevious = pgetcurr(pp);
 }
    }
    else if (pp == pprevious)
 pprevious = pgetcurr(pp);
}
