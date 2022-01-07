
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {size_t size; scalar_t__ base_tai; } ;
struct TYPE_10__ {TYPE_1__ head; TYPE_3__* info; } ;
typedef TYPE_2__ leap_table_t ;
struct TYPE_11__ {scalar_t__ taiof; } ;
typedef TYPE_3__ leap_info_t ;


 size_t MAX_HIST ;
 int TRUE ;
 int memmove (TYPE_3__*,TYPE_3__*,int) ;
 int reset_times (TYPE_2__*) ;

__attribute__((used)) static int
add_range(
 leap_table_t * pt,
 const leap_info_t * pi)
{
 if (pt->head.size == 0) {
  if (pi->taiof >= 0)
   pt->head.base_tai = pi->taiof - 1;
  else
   pt->head.base_tai = pi->taiof + 1;
 } else if (pt->head.size >= MAX_HIST) {
  pt->head.size = MAX_HIST - 1;
  pt->head.base_tai = pt->info[pt->head.size].taiof;
 }


 memmove(pt->info+1, pt->info, pt->head.size*sizeof(*pt->info));
 pt->info[0] = *pi;
 pt->head.size++;
 reset_times(pt);
 return TRUE;
}
