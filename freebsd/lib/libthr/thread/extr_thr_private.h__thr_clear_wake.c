
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pthread {TYPE_1__* wake_addr; } ;
struct TYPE_2__ {scalar_t__ value; } ;



__attribute__((used)) static inline void
_thr_clear_wake(struct pthread *td)
{
 td->wake_addr->value = 0;
}
