
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iter_qstate {int* target_count; } ;


 scalar_t__ calloc (int,int) ;

__attribute__((used)) static void
target_count_create(struct iter_qstate* iq)
{
 if(!iq->target_count) {
  iq->target_count = (int*)calloc(2, sizeof(int));

  if(iq->target_count)
   iq->target_count[0] = 1;
 }
}
