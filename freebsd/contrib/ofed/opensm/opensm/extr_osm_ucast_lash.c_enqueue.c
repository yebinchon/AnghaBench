
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ q_state; } ;
typedef TYPE_1__ switch_t ;
typedef int cl_list_t ;


 int CL_ASSERT (int) ;
 scalar_t__ Q_MEMBER ;
 scalar_t__ UNQUEUED ;
 int cl_list_insert_tail (int *,TYPE_1__*) ;

__attribute__((used)) inline static void enqueue(cl_list_t * bfsq, switch_t * sw)
{
 CL_ASSERT(sw->q_state == UNQUEUED);
 sw->q_state = Q_MEMBER;
 cl_list_insert_tail(bfsq, sw);
}
