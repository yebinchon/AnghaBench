
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct nlist {char* n_name; int n_value; scalar_t__ n_desc; scalar_t__ n_other; int n_type; } ;
struct kvm_nlist {char* n_name; int n_value; int n_type; } ;
struct TYPE_6__ {int program; } ;
typedef TYPE_1__ kvm_t ;


 int _kvm_err (TYPE_1__*,int ,char*) ;
 struct kvm_nlist* calloc (int,int) ;
 int kvm_native (TYPE_1__*) ;
 int kvm_nlist2 (TYPE_1__*,struct kvm_nlist*) ;

int
kvm_nlist(kvm_t *kd, struct nlist *nl)
{
 struct kvm_nlist *kl;
 int count, i, nfail;





 if (!kvm_native(kd)) {
  _kvm_err(kd, kd->program, "kvm_nlist of non-native vmcore");
  return (-1);
 }

 for (count = 0; nl[count].n_name != ((void*)0) && nl[count].n_name[0] != '\0';
      count++)
  ;
 if (count == 0)
  return (0);
 kl = calloc(count + 1, sizeof(*kl));
 for (i = 0; i < count; i++)
  kl[i].n_name = nl[i].n_name;
 nfail = kvm_nlist2(kd, kl);
 for (i = 0; i < count; i++) {
  nl[i].n_type = kl[i].n_type;
  nl[i].n_other = 0;
  nl[i].n_desc = 0;
  nl[i].n_value = kl[i].n_value;
 }
 return (nfail);
}
