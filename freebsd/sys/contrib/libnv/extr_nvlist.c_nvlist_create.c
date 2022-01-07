
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nvl_flags; int nvl_magic; int nvl_head; int * nvl_array_next; int * nvl_parent; scalar_t__ nvl_error; } ;
typedef TYPE_1__ nvlist_t ;


 int NVLIST_MAGIC ;
 int NV_FLAG_PUBLIC_MASK ;
 int PJDLOG_ASSERT (int) ;
 int TAILQ_INIT (int *) ;
 TYPE_1__* nv_malloc (int) ;

nvlist_t *
nvlist_create(int flags)
{
 nvlist_t *nvl;

 PJDLOG_ASSERT((flags & ~(NV_FLAG_PUBLIC_MASK)) == 0);

 nvl = nv_malloc(sizeof(*nvl));
 if (nvl == ((void*)0))
  return (((void*)0));
 nvl->nvl_error = 0;
 nvl->nvl_flags = flags;
 nvl->nvl_parent = ((void*)0);
 nvl->nvl_array_next = ((void*)0);
 TAILQ_INIT(&nvl->nvl_head);
 nvl->nvl_magic = NVLIST_MAGIC;

 return (nvl);
}
