
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int counter; } ;
typedef TYPE_1__ atomic_t ;


 int atomic_cmpxchg (TYPE_1__*,int,int const) ;

__attribute__((used)) static uint8_t
linux_update_state(atomic_t *v, const uint8_t *pstate)
{
 int c, old;

 c = v->counter;

 while ((old = atomic_cmpxchg(v, c, pstate[c])) != c)
  c = old;

 return (c);
}
