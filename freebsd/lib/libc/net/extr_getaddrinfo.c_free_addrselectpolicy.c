
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct policyqueue {int dummy; } ;
struct policyhead {int dummy; } ;


 struct policyqueue* TAILQ_FIRST (struct policyhead*) ;
 struct policyqueue* TAILQ_NEXT (struct policyqueue*,int ) ;
 int TAILQ_REMOVE (struct policyhead*,struct policyqueue*,int ) ;
 int free (struct policyqueue*) ;
 int pc_entry ;

__attribute__((used)) static void
free_addrselectpolicy(struct policyhead *head)
{
 struct policyqueue *ent, *nent;

 for (ent = TAILQ_FIRST(head); ent; ent = nent) {
  nent = TAILQ_NEXT(ent, pc_entry);
  TAILQ_REMOVE(head, ent, pc_entry);
  free(ent);
 }
}
