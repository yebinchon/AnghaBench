
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iter_qstate {int* target_count; } ;


 int target_count_create (struct iter_qstate*) ;

__attribute__((used)) static void
target_count_increase(struct iter_qstate* iq, int num)
{
 target_count_create(iq);
 if(iq->target_count)
  iq->target_count[1] += num;
}
