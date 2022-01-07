
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* mstate ;
typedef int mchunkptr ;
typedef int Void_t ;
struct TYPE_4__ {int mutex; } ;


 int * ATFORK_ARENA_PTR ;
 int _int_free (TYPE_1__*,int *) ;
 TYPE_1__* arena_for_chunk (int ) ;
 int arena_key ;
 scalar_t__ chunk_is_mmapped (int ) ;
 int mem2chunk (int *) ;
 int munmap_chunk (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tsd_getspecific (int ,int *) ;

__attribute__((used)) static void
free_atfork(Void_t* mem, const Void_t *caller)
{
  Void_t *vptr = ((void*)0);
  mstate ar_ptr;
  mchunkptr p;

  if (mem == 0)
    return;

  p = mem2chunk(mem);
  ar_ptr = arena_for_chunk(p);
  tsd_getspecific(arena_key, vptr);
  if(vptr != ATFORK_ARENA_PTR)
    (void)mutex_lock(&ar_ptr->mutex);
  _int_free(ar_ptr, mem);
  if(vptr != ATFORK_ARENA_PTR)
    (void)mutex_unlock(&ar_ptr->mutex);
}
