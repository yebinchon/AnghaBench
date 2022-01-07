
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct nlist {char* n_name; int n_type; int n_value; } ;
struct kvm_nlist {char* n_name; int n_type; int n_value; } ;
struct TYPE_3__ {int (* resolve_symbol ) (char*,int *) ;int nlfd; } ;
typedef TYPE_1__ kvm_t ;
typedef int kvaddr_t ;


 int N_DATA ;
 int N_EXT ;
 int __fdnlist (int ,struct nlist*) ;
 struct nlist* calloc (int,int) ;
 int free (struct nlist*) ;
 int stub1 (char*,int *) ;

__attribute__((used)) static int
kvm_fdnlist(kvm_t *kd, struct kvm_nlist *list)
{
 kvaddr_t addr;
 int error, nfail;

 if (kd->resolve_symbol == ((void*)0)) {
  struct nlist *nl;
  int count, i;

  for (count = 0; list[count].n_name != ((void*)0) &&
       list[count].n_name[0] != '\0'; count++)
   ;
  nl = calloc(count + 1, sizeof(*nl));
  for (i = 0; i < count; i++)
   nl[i].n_name = list[i].n_name;
  nfail = __fdnlist(kd->nlfd, nl);
  for (i = 0; i < count; i++) {
   list[i].n_type = nl[i].n_type;
   list[i].n_value = nl[i].n_value;
  }
  free(nl);
  return (nfail);
 }

 nfail = 0;
 while (list->n_name != ((void*)0) && list->n_name[0] != '\0') {
  error = kd->resolve_symbol(list->n_name, &addr);
  if (error != 0) {
   nfail++;
   list->n_value = 0;
   list->n_type = 0;
  } else {
   list->n_value = addr;
   list->n_type = N_DATA | N_EXT;
  }
  list++;
 }
 return (nfail);
}
