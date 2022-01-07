
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* mstate ;
typedef int mchunkptr ;
typedef int Void_t ;
struct TYPE_5__ {int mutex; int stat_lock_wait; int stat_lock_direct; } ;


 int _int_free (TYPE_1__*,int *) ;
 TYPE_1__* arena_for_chunk (int ) ;
 int assert (TYPE_1__*) ;
 int debug_printf (char*,int *) ;
 int mem2chunk (int *) ;
 int mutex_lock (int *) ;
 int mutex_trylock (int *) ;
 int mutex_unlock (int *) ;

void
public_fREe(Void_t* mem)
{
  mstate ar_ptr;
  mchunkptr p;

  debug_printf("cvmx_free(%p)\n", mem);


  if (mem == 0)
    return;

  p = mem2chunk(mem);


  ar_ptr = arena_for_chunk(p);
  assert(ar_ptr);
  (void)mutex_lock(&ar_ptr->mutex);

  _int_free(ar_ptr, mem);
  (void)mutex_unlock(&ar_ptr->mutex);
}
