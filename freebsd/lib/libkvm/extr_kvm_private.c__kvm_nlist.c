
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


typedef int symname ;
struct kvm_nlist {char* n_name; scalar_t__ n_type; void* n_value; } ;
struct kld_sym_lookup {int version; char* symname; void* symvalue; scalar_t__ symsize; } ;
typedef int lookup ;
struct TYPE_12__ {int program; } ;
typedef TYPE_1__ kvm_t ;


 char* DPCPU_SYMPREFIX ;
 int ISALIVE (TYPE_1__*) ;
 int KLDSYM_LOOKUP ;
 scalar_t__ N_TEXT ;
 scalar_t__ N_UNDF ;
 char* VNET_SYMPREFIX ;
 scalar_t__ _kvm_dpcpu_initialized (TYPE_1__*,int) ;
 void* _kvm_dpcpu_validaddr (TYPE_1__*,void*) ;
 int _kvm_syserr (TYPE_1__*,int ,char*) ;
 scalar_t__ _kvm_vnet_initialized (TYPE_1__*,int) ;
 void* _kvm_vnet_validaddr (TYPE_1__*,void*) ;
 int kldsym (int ,int ,struct kld_sym_lookup*) ;
 int kvm_fdnlist (TYPE_1__*,struct kvm_nlist*) ;
 int kvm_fdnlist_prefix (TYPE_1__*,struct kvm_nlist*,int,char*,void* (*) (TYPE_1__*,void*)) ;
 int snprintf (char*,int,char*,char const*,char*) ;
 scalar_t__ strcmp (char const*,char*) ;

int
_kvm_nlist(kvm_t *kd, struct kvm_nlist *nl, int initialize)
{
 struct kvm_nlist *p;
 int nvalid;
 struct kld_sym_lookup lookup;
 int error;
 const char *prefix = "";
 char symname[1024];
 int tried_vnet, tried_dpcpu;





 if (!ISALIVE(kd)) {
  error = kvm_fdnlist(kd, nl);
  if (error <= 0)
   return (error);

  if (_kvm_vnet_initialized(kd, initialize))
   error = kvm_fdnlist_prefix(kd, nl, error,
       VNET_SYMPREFIX, _kvm_vnet_validaddr);

  if (error > 0 && _kvm_dpcpu_initialized(kd, initialize))
   error = kvm_fdnlist_prefix(kd, nl, error,
       DPCPU_SYMPREFIX, _kvm_dpcpu_validaddr);

  return (error);
 }





 nvalid = 0;
 tried_vnet = 0;
 tried_dpcpu = 0;
again:
 for (p = nl; p->n_name && p->n_name[0]; ++p) {
  if (p->n_type != N_UNDF)
   continue;

  lookup.version = sizeof(lookup);
  lookup.symvalue = 0;
  lookup.symsize = 0;

  error = snprintf(symname, sizeof(symname), "%s%s", prefix,
      (prefix[0] != '\0' && p->n_name[0] == '_') ?
   (p->n_name + 1) : p->n_name);
  if (error < 0 || error >= (int)sizeof(symname))
   continue;
  lookup.symname = symname;
  if (lookup.symname[0] == '_')
   lookup.symname++;

  if (kldsym(0, KLDSYM_LOOKUP, &lookup) != -1) {
   p->n_type = N_TEXT;
   if (_kvm_vnet_initialized(kd, initialize) &&
       strcmp(prefix, VNET_SYMPREFIX) == 0)
    p->n_value =
        _kvm_vnet_validaddr(kd, lookup.symvalue);
   else if (_kvm_dpcpu_initialized(kd, initialize) &&
       strcmp(prefix, DPCPU_SYMPREFIX) == 0)
    p->n_value =
        _kvm_dpcpu_validaddr(kd, lookup.symvalue);
   else
    p->n_value = lookup.symvalue;
   ++nvalid;

  }
 }





 error = ((p - nl) - nvalid);
 if (error && _kvm_vnet_initialized(kd, initialize) && !tried_vnet) {
  tried_vnet = 1;
  prefix = VNET_SYMPREFIX;
  goto again;
 }
 if (error && _kvm_dpcpu_initialized(kd, initialize) && !tried_dpcpu) {
  tried_dpcpu = 1;
  prefix = DPCPU_SYMPREFIX;
  goto again;
 }





 error = ((p - nl) - nvalid);
 if (error)
  _kvm_syserr(kd, kd->program, "kvm_nlist");
 return (error);
}
