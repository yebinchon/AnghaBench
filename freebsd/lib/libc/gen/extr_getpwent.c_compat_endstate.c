
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct compat_state {int template; TYPE_1__* exclude; TYPE_2__* db; } ;
struct TYPE_4__ {int (* close ) (TYPE_2__*) ;} ;
struct TYPE_3__ {int (* close ) (TYPE_1__*) ;} ;


 int compat_clear_template (int *) ;
 int free (void*) ;
 int stub1 (TYPE_2__*) ;
 int stub2 (TYPE_1__*) ;

__attribute__((used)) static void
compat_endstate(void *p)
{
 struct compat_state *st;

 if (p == ((void*)0))
  return;
 st = (struct compat_state *)p;
 if (st->db != ((void*)0))
  st->db->close(st->db);
 if (st->exclude != ((void*)0))
  st->exclude->close(st->exclude);
 compat_clear_template(&st->template);
 free(p);
}
