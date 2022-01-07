
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt_percpu_cache_s {int dummy; } ;
struct mt_percpu_alloc_s {int dummy; } ;
struct memory_type_list {int mtl_list; } ;
struct memory_type {int mt_allocator; int mt_name; void* mt_percpu_cache; void* mt_percpu_alloc; } ;


 int LIST_INSERT_HEAD (int *,struct memory_type*,int ) ;
 int MEMTYPE_MAXNAME ;
 int bzero (struct memory_type*,int) ;
 void* malloc (int) ;
 int mt_list ;
 int strlcpy (int ,char const*,int ) ;

struct memory_type *
_memstat_mt_allocate(struct memory_type_list *list, int allocator,
    const char *name, int maxcpus)
{
 struct memory_type *mtp;

 mtp = malloc(sizeof(*mtp));
 if (mtp == ((void*)0))
  return (((void*)0));

 bzero(mtp, sizeof(*mtp));

 mtp->mt_allocator = allocator;
 mtp->mt_percpu_alloc = malloc(sizeof(struct mt_percpu_alloc_s) *
     maxcpus);
 mtp->mt_percpu_cache = malloc(sizeof(struct mt_percpu_cache_s) *
     maxcpus);
 strlcpy(mtp->mt_name, name, MEMTYPE_MAXNAME);
 LIST_INSERT_HEAD(&list->mtl_list, mtp, mt_list);
 return (mtp);
}
