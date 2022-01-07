
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct nlist {char* n_name; scalar_t__ n_type; int n_value; } ;
struct kinfo_proc {int ki_structsize; } ;
struct TYPE_15__ {struct kinfo_proc* procbase; int program; TYPE_1__* arch; } ;
typedef TYPE_2__ kvm_t ;
struct TYPE_14__ {int (* ka_native ) (TYPE_2__*) ;} ;


 int CTL_KERN ;
 scalar_t__ ENOMEM ;
 scalar_t__ ISALIVE (TYPE_2__*) ;
 int KERN_PROC ;
 int KERN_PROC_ALL ;
 int KERN_PROC_INC_THREAD ;
 int KERN_PROC_PROC ;
 scalar_t__ KREAD (TYPE_2__*,int ,int*) ;
 int _kvm_err (TYPE_2__*,int ,char*,...) ;
 int _kvm_freeprocs (TYPE_2__*) ;
 struct kinfo_proc* _kvm_malloc (TYPE_2__*,size_t) ;
 scalar_t__ _kvm_realloc (TYPE_2__*,struct kinfo_proc*,size_t) ;
 int _kvm_syserr (TYPE_2__*,int ,char*) ;
 int cpu_tick_frequency ;
 scalar_t__ errno ;
 int free (void*) ;
 int hz ;
 int kvm_deadprocs (TYPE_2__*,int,int,int ,int ,int) ;
 scalar_t__ kvm_nlist (TYPE_2__*,struct nlist*) ;
 struct kinfo_proc* realloc (struct kinfo_proc*,size_t) ;
 int stub1 (TYPE_2__*) ;
 int sysctl (int*,int,struct kinfo_proc*,size_t*,int *,int ) ;
 int ticks ;

struct kinfo_proc *
kvm_getprocs(kvm_t *kd, int op, int arg, int *cnt)
{
 int mib[4], st, nprocs;
 size_t size, osize;
 int temp_op;

 if (kd->procbase != 0) {
  free((void *)kd->procbase);




  kd->procbase = 0;
 }
 if (ISALIVE(kd)) {
  size = 0;
  mib[0] = CTL_KERN;
  mib[1] = KERN_PROC;
  mib[2] = op;
  mib[3] = arg;
  temp_op = op & ~KERN_PROC_INC_THREAD;
  st = sysctl(mib,
      temp_op == KERN_PROC_ALL || temp_op == KERN_PROC_PROC ?
      3 : 4, ((void*)0), &size, ((void*)0), 0);
  if (st == -1) {
   _kvm_syserr(kd, kd->program, "kvm_getprocs");
   return (0);
  }





  if (size == 0) {
   kd->procbase = _kvm_malloc(kd, 1);
   goto liveout;
  }
  do {
   size += size / 10;
   kd->procbase = (struct kinfo_proc *)
       _kvm_realloc(kd, kd->procbase, size);
   if (kd->procbase == ((void*)0))
    return (0);
   osize = size;
   st = sysctl(mib, temp_op == KERN_PROC_ALL ||
       temp_op == KERN_PROC_PROC ? 3 : 4,
       kd->procbase, &size, ((void*)0), 0);
  } while (st == -1 && errno == ENOMEM && size == osize);
  if (st == -1) {
   _kvm_syserr(kd, kd->program, "kvm_getprocs");
   return (0);
  }






  if (size > 0 &&
      kd->procbase->ki_structsize != sizeof(struct kinfo_proc)) {
   _kvm_err(kd, kd->program,
       "kinfo_proc size mismatch (expected %zu, got %d)",
       sizeof(struct kinfo_proc),
       kd->procbase->ki_structsize);
   return (0);
  }
liveout:
  nprocs = size == 0 ? 0 : size / kd->procbase->ki_structsize;
 } else {
  struct nlist nl[6], *p;
  struct nlist nlz[2];

  nl[0].n_name = "_nprocs";
  nl[1].n_name = "_allproc";
  nl[2].n_name = "_ticks";
  nl[3].n_name = "_hz";
  nl[4].n_name = "_cpu_tick_frequency";
  nl[5].n_name = 0;

  nlz[0].n_name = "_zombproc";
  nlz[1].n_name = 0;

  if (!kd->arch->ka_native(kd)) {
   _kvm_err(kd, kd->program,
       "cannot read procs from non-native core");
   return (0);
  }

  if (kvm_nlist(kd, nl) != 0) {
   for (p = nl; p->n_type != 0; ++p)
    ;
   _kvm_err(kd, kd->program,
     "%s: no such symbol", p->n_name);
   return (0);
  }
  (void) kvm_nlist(kd, nlz);
  if (KREAD(kd, nl[0].n_value, &nprocs)) {
   _kvm_err(kd, kd->program, "can't read nprocs");
   return (0);
  }





  if (op == KERN_PROC_ALL || (op & KERN_PROC_INC_THREAD))
   nprocs *= 10;
  if (KREAD(kd, nl[2].n_value, &ticks)) {
   _kvm_err(kd, kd->program, "can't read ticks");
   return (0);
  }
  if (KREAD(kd, nl[3].n_value, &hz)) {
   _kvm_err(kd, kd->program, "can't read hz");
   return (0);
  }
  if (KREAD(kd, nl[4].n_value, &cpu_tick_frequency)) {
   _kvm_err(kd, kd->program,
       "can't read cpu_tick_frequency");
   return (0);
  }
  size = nprocs * sizeof(struct kinfo_proc);
  kd->procbase = (struct kinfo_proc *)_kvm_malloc(kd, size);
  if (kd->procbase == ((void*)0))
   return (0);

  nprocs = kvm_deadprocs(kd, op, arg, nl[1].n_value,
          nlz[0].n_value, nprocs);
  if (nprocs <= 0) {
   _kvm_freeprocs(kd);
   nprocs = 0;
  }






 }
 *cnt = nprocs;
 return (kd->procbase);
}
