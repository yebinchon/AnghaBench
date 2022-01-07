
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uma_type_header {int uth_allocs; int uth_frees; int uth_size; int uth_limit; int uth_zone_flags; scalar_t__ uth_keg_free; scalar_t__ uth_zone_free; int uth_rsize; int uth_xdomain; int uth_sleeps; int uth_fails; int uth_name; } ;
struct uma_stream_header {scalar_t__ ush_version; int ush_maxcpus; int ush_count; } ;
struct uma_percpu_stat {scalar_t__ ups_frees; scalar_t__ ups_allocs; scalar_t__ ups_cache_free; } ;
struct memory_type_list {void* mtl_error; int mtl_list; } ;
struct memory_type {int mt_numallocs; int mt_numfrees; int mt_size; int mt_memalloced; int mt_memfreed; int mt_bytes; int mt_countlimit; int mt_byteslimit; int mt_count; scalar_t__ mt_zonefree; int mt_free; scalar_t__ mt_kegfree; int mt_rsize; TYPE_1__* mt_percpu_cache; int mt_xdomain; int mt_sleeps; int mt_failures; } ;
typedef int maxid ;
typedef int count ;
struct TYPE_2__ {scalar_t__ mtp_free; } ;


 int ALLOCATOR_UMA ;
 scalar_t__ EACCES ;
 scalar_t__ ENOMEM ;
 scalar_t__ EPERM ;
 int LIST_EMPTY (int *) ;
 void* MEMSTAT_ERROR_DATAERROR ;
 void* MEMSTAT_ERROR_NOMEMORY ;
 void* MEMSTAT_ERROR_PERMISSION ;
 void* MEMSTAT_ERROR_VERSION ;
 scalar_t__ UMA_STREAM_VERSION ;
 int UTH_ZONE_SECONDARY ;
 struct memory_type* _memstat_mt_allocate (struct memory_type_list*,int ,int ,int) ;
 int _memstat_mt_reset_stats (struct memory_type*,int) ;
 int _memstat_mtl_empty (struct memory_type_list*) ;
 scalar_t__ errno ;
 int free (char*) ;
 char* malloc (size_t) ;
 struct memory_type* memstat_mtl_find (struct memory_type_list*,int ,int ) ;
 scalar_t__ sysctlbyname (char*,...) ;

int
memstat_sysctl_uma(struct memory_type_list *list, int flags)
{
 struct uma_stream_header *ushp;
 struct uma_type_header *uthp;
 struct uma_percpu_stat *upsp;
 struct memory_type *mtp;
 int count, hint_dontsearch, i, j, maxcpus, maxid;
 char *buffer, *p;
 size_t size;

 hint_dontsearch = LIST_EMPTY(&list->mtl_list);
retry:
 size = sizeof(maxid);
 if (sysctlbyname("kern.smp.maxid", &maxid, &size, ((void*)0), 0) < 0) {
  if (errno == EACCES || errno == EPERM)
   list->mtl_error = MEMSTAT_ERROR_PERMISSION;
  else
   list->mtl_error = MEMSTAT_ERROR_DATAERROR;
  return (-1);
 }
 if (size != sizeof(maxid)) {
  list->mtl_error = MEMSTAT_ERROR_DATAERROR;
  return (-1);
 }

 size = sizeof(count);
 if (sysctlbyname("vm.zone_count", &count, &size, ((void*)0), 0) < 0) {
  if (errno == EACCES || errno == EPERM)
   list->mtl_error = MEMSTAT_ERROR_PERMISSION;
  else
   list->mtl_error = MEMSTAT_ERROR_VERSION;
  return (-1);
 }
 if (size != sizeof(count)) {
  list->mtl_error = MEMSTAT_ERROR_DATAERROR;
  return (-1);
 }

 size = sizeof(*uthp) + count * (sizeof(*uthp) + sizeof(*upsp) *
     (maxid + 1));

 buffer = malloc(size);
 if (buffer == ((void*)0)) {
  list->mtl_error = MEMSTAT_ERROR_NOMEMORY;
  return (-1);
 }

 if (sysctlbyname("vm.zone_stats", buffer, &size, ((void*)0), 0) < 0) {




  if (errno == ENOMEM) {
   free(buffer);
   goto retry;
  }
  if (errno == EACCES || errno == EPERM)
   list->mtl_error = MEMSTAT_ERROR_PERMISSION;
  else
   list->mtl_error = MEMSTAT_ERROR_VERSION;
  free(buffer);
  return (-1);
 }

 if (size == 0) {
  free(buffer);
  return (0);
 }

 if (size < sizeof(*ushp)) {
  list->mtl_error = MEMSTAT_ERROR_VERSION;
  free(buffer);
  return (-1);
 }
 p = buffer;
 ushp = (struct uma_stream_header *)p;
 p += sizeof(*ushp);

 if (ushp->ush_version != UMA_STREAM_VERSION) {
  list->mtl_error = MEMSTAT_ERROR_VERSION;
  free(buffer);
  return (-1);
 }






 maxcpus = ushp->ush_maxcpus;
 count = ushp->ush_count;
 for (i = 0; i < count; i++) {
  uthp = (struct uma_type_header *)p;
  p += sizeof(*uthp);

  if (hint_dontsearch == 0) {
   mtp = memstat_mtl_find(list, ALLOCATOR_UMA,
       uthp->uth_name);
  } else
   mtp = ((void*)0);
  if (mtp == ((void*)0))
   mtp = _memstat_mt_allocate(list, ALLOCATOR_UMA,
       uthp->uth_name, maxid + 1);
  if (mtp == ((void*)0)) {
   _memstat_mtl_empty(list);
   free(buffer);
   list->mtl_error = MEMSTAT_ERROR_NOMEMORY;
   return (-1);
  }




  _memstat_mt_reset_stats(mtp, maxid + 1);

  mtp->mt_numallocs = uthp->uth_allocs;
  mtp->mt_numfrees = uthp->uth_frees;
  mtp->mt_failures = uthp->uth_fails;
  mtp->mt_sleeps = uthp->uth_sleeps;
  mtp->mt_xdomain = uthp->uth_xdomain;

  for (j = 0; j < maxcpus; j++) {
   upsp = (struct uma_percpu_stat *)p;
   p += sizeof(*upsp);

   mtp->mt_percpu_cache[j].mtp_free =
       upsp->ups_cache_free;
   mtp->mt_free += upsp->ups_cache_free;
   mtp->mt_numallocs += upsp->ups_allocs;
   mtp->mt_numfrees += upsp->ups_frees;
  }







  if (mtp->mt_numallocs < mtp->mt_numfrees)
   mtp->mt_numallocs = mtp->mt_numfrees;

  mtp->mt_size = uthp->uth_size;
  mtp->mt_rsize = uthp->uth_rsize;
  mtp->mt_memalloced = mtp->mt_numallocs * uthp->uth_size;
  mtp->mt_memfreed = mtp->mt_numfrees * uthp->uth_size;
  mtp->mt_bytes = mtp->mt_memalloced - mtp->mt_memfreed;
  mtp->mt_countlimit = uthp->uth_limit;
  mtp->mt_byteslimit = uthp->uth_limit * uthp->uth_size;

  mtp->mt_count = mtp->mt_numallocs - mtp->mt_numfrees;
  mtp->mt_zonefree = uthp->uth_zone_free;






  if (!(uthp->uth_zone_flags & UTH_ZONE_SECONDARY)) {
   mtp->mt_kegfree = uthp->uth_keg_free;
   mtp->mt_free += mtp->mt_kegfree;
  }
  mtp->mt_free += mtp->mt_zonefree;
 }

 free(buffer);

 return (0);
}
