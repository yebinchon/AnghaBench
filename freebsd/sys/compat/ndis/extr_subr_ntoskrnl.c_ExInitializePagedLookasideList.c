
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
typedef int slist_entry ;
struct TYPE_4__ {int gl_size; int gl_maxdepth; int gl_depth; int gl_type; int * gl_freefunc; int * gl_allocfunc; int gl_tag; } ;
struct TYPE_5__ {TYPE_1__ nll_l; int nll_obsoletelock; } ;
typedef TYPE_2__ paged_lookaside_list ;
typedef int lookaside_free_func ;
typedef int lookaside_alloc_func ;
typedef int funcptr ;


 scalar_t__ ExAllocatePoolWithTag ;
 scalar_t__ ExFreePool ;
 int KeInitializeSpinLock (int *) ;
 int LOOKASIDE_DEPTH ;
 int NonPagedPool ;
 int bzero (char*,int) ;
 void* ntoskrnl_findwrap (int ) ;

__attribute__((used)) static void
ExInitializePagedLookasideList(paged_lookaside_list *lookaside,
 lookaside_alloc_func *allocfunc, lookaside_free_func *freefunc,
 uint32_t flags, size_t size, uint32_t tag, uint16_t depth)
{
 bzero((char *)lookaside, sizeof(paged_lookaside_list));

 if (size < sizeof(slist_entry))
  lookaside->nll_l.gl_size = sizeof(slist_entry);
 else
  lookaside->nll_l.gl_size = size;
 lookaside->nll_l.gl_tag = tag;
 if (allocfunc == ((void*)0))
  lookaside->nll_l.gl_allocfunc =
      ntoskrnl_findwrap((funcptr)ExAllocatePoolWithTag);
 else
  lookaside->nll_l.gl_allocfunc = allocfunc;

 if (freefunc == ((void*)0))
  lookaside->nll_l.gl_freefunc =
      ntoskrnl_findwrap((funcptr)ExFreePool);
 else
  lookaside->nll_l.gl_freefunc = freefunc;





 lookaside->nll_l.gl_type = NonPagedPool;
 lookaside->nll_l.gl_depth = depth;
 lookaside->nll_l.gl_maxdepth = LOOKASIDE_DEPTH;
}
