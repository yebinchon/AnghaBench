
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* key; int lock; } ;
struct TYPE_6__ {TYPE_1__ entry; } ;
typedef TYPE_2__ alloc_special_type ;


 int lock_rw_init (int *) ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static void
alloc_setup_special(alloc_special_type* t)
{
 memset(t, 0, sizeof(*t));
 lock_rw_init(&t->entry.lock);
 t->entry.key = t;
}
