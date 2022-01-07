
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iter_qstate {int final_state; } ;


 int next_state (struct iter_qstate*,int ) ;

__attribute__((used)) static int
final_state(struct iter_qstate* iq)
{
 return next_state(iq, iq->final_state);
}
