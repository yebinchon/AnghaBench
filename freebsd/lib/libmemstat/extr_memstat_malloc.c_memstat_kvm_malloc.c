
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_long ;
typedef int type ;
struct memory_type_list {int mtl_error; int mtl_list; } ;
struct memory_type {scalar_t__ mt_numfrees; scalar_t__ mt_numallocs; scalar_t__ mt_count; scalar_t__ mt_memfreed; scalar_t__ mt_memalloced; scalar_t__ mt_bytes; TYPE_3__* mt_percpu_alloc; int mt_sizemask; } ;
struct malloc_type_stats {int mts_size; scalar_t__ mts_numfrees; scalar_t__ mts_numallocs; scalar_t__ mts_memfreed; scalar_t__ mts_memalloced; } ;
struct malloc_type_internal {scalar_t__ mti_stats; struct malloc_type_internal* ks_handle; scalar_t__ ks_shortdesc; struct malloc_type_internal* ks_next; } ;
struct malloc_type {scalar_t__ mti_stats; struct malloc_type* ks_handle; scalar_t__ ks_shortdesc; struct malloc_type* ks_next; } ;
typedef int mts ;
typedef int mti ;
typedef int mp_maxcpus ;
typedef int kvm_t ;
typedef int kmemstatistics ;
struct TYPE_5__ {int mtp_sizemask; scalar_t__ mtp_numfrees; scalar_t__ mtp_numallocs; scalar_t__ mtp_memfreed; scalar_t__ mtp_memalloced; } ;
struct TYPE_4__ {scalar_t__ n_type; scalar_t__ n_value; } ;


 int ALLOCATOR_MALLOC ;
 int LIST_EMPTY (int *) ;
 int MEMSTAT_ERROR_KVM ;
 int MEMSTAT_ERROR_KVM_NOSYMBOL ;
 int MEMSTAT_ERROR_NOMEMORY ;
 int MEMTYPE_MAXNAME ;
 size_t X_KMEMSTATISTICS ;
 size_t X_MP_MAXCPUS ;
 struct memory_type* _memstat_mt_allocate (struct memory_type_list*,int ,char*,int) ;
 int _memstat_mt_reset_stats (struct memory_type*,int) ;
 int _memstat_mtl_empty (struct memory_type_list*) ;
 int bzero (TYPE_3__*,int) ;
 int kread (int *,struct malloc_type_internal*,struct malloc_type_internal*,int,int ) ;
 int kread_string (int *,void*,char*,int) ;
 int kread_symbol (int *,size_t,...) ;
 int kread_zpcpu (int *,int ,struct malloc_type_stats*,int,int) ;
 int kvm_getncpus (int *) ;
 scalar_t__ kvm_nlist (int *,TYPE_1__*) ;
 struct memory_type* memstat_mtl_find (struct memory_type_list*,int ,char*) ;
 TYPE_1__* namelist ;

int
memstat_kvm_malloc(struct memory_type_list *list, void *kvm_handle)
{
 struct memory_type *mtp;
 void *kmemstatistics;
 int hint_dontsearch, j, mp_maxcpus, mp_ncpus, ret;
 char name[MEMTYPE_MAXNAME];
 struct malloc_type_stats mts;
 struct malloc_type_internal mti, *mtip;
 struct malloc_type type, *typep;
 kvm_t *kvm;

 kvm = (kvm_t *)kvm_handle;

 hint_dontsearch = LIST_EMPTY(&list->mtl_list);

 if (kvm_nlist(kvm, namelist) != 0) {
  list->mtl_error = MEMSTAT_ERROR_KVM;
  return (-1);
 }

 if (namelist[X_KMEMSTATISTICS].n_type == 0 ||
     namelist[X_KMEMSTATISTICS].n_value == 0) {
  list->mtl_error = MEMSTAT_ERROR_KVM_NOSYMBOL;
  return (-1);
 }

 ret = kread_symbol(kvm, X_MP_MAXCPUS, &mp_maxcpus,
     sizeof(mp_maxcpus), 0);
 if (ret != 0) {
  list->mtl_error = ret;
  return (-1);
 }

 ret = kread_symbol(kvm, X_KMEMSTATISTICS, &kmemstatistics,
     sizeof(kmemstatistics), 0);
 if (ret != 0) {
  list->mtl_error = ret;
  return (-1);
 }

 mp_ncpus = kvm_getncpus(kvm);

 for (typep = kmemstatistics; typep != ((void*)0); typep = type.ks_next) {
  ret = kread(kvm, typep, &type, sizeof(type), 0);
  if (ret != 0) {
   _memstat_mtl_empty(list);
   list->mtl_error = ret;
   return (-1);
  }
  ret = kread_string(kvm, (void *)type.ks_shortdesc, name,
      MEMTYPE_MAXNAME);
  if (ret != 0) {
   _memstat_mtl_empty(list);
   list->mtl_error = ret;
   return (-1);
  }





  mtip = type.ks_handle;
  ret = kread(kvm, mtip, &mti, sizeof(mti), 0);
  if (ret != 0) {
   _memstat_mtl_empty(list);
   list->mtl_error = ret;
   return (-1);
  }

  if (hint_dontsearch == 0) {
   mtp = memstat_mtl_find(list, ALLOCATOR_MALLOC, name);
  } else
   mtp = ((void*)0);
  if (mtp == ((void*)0))
   mtp = _memstat_mt_allocate(list, ALLOCATOR_MALLOC,
       name, mp_maxcpus);
  if (mtp == ((void*)0)) {
   _memstat_mtl_empty(list);
   list->mtl_error = MEMSTAT_ERROR_NOMEMORY;
   return (-1);
  }





  _memstat_mt_reset_stats(mtp, mp_maxcpus);
  for (j = 0; j < mp_ncpus; j++) {
   ret = kread_zpcpu(kvm, (u_long)mti.mti_stats, &mts,
       sizeof(mts), j);
   if (ret != 0) {
    _memstat_mtl_empty(list);
    list->mtl_error = ret;
    return (-1);
   }
   mtp->mt_memalloced += mts.mts_memalloced;
   mtp->mt_memfreed += mts.mts_memfreed;
   mtp->mt_numallocs += mts.mts_numallocs;
   mtp->mt_numfrees += mts.mts_numfrees;
   mtp->mt_sizemask |= mts.mts_size;

   mtp->mt_percpu_alloc[j].mtp_memalloced =
       mts.mts_memalloced;
   mtp->mt_percpu_alloc[j].mtp_memfreed =
       mts.mts_memfreed;
   mtp->mt_percpu_alloc[j].mtp_numallocs =
       mts.mts_numallocs;
   mtp->mt_percpu_alloc[j].mtp_numfrees =
       mts.mts_numfrees;
   mtp->mt_percpu_alloc[j].mtp_sizemask =
       mts.mts_size;
  }
  for (; j < mp_maxcpus; j++) {
   bzero(&mtp->mt_percpu_alloc[j],
       sizeof(mtp->mt_percpu_alloc[0]));
  }

  mtp->mt_bytes = mtp->mt_memalloced - mtp->mt_memfreed;
  mtp->mt_count = mtp->mt_numallocs - mtp->mt_numfrees;
 }

 return (0);
}
