
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ q_state; } ;
typedef TYPE_1__ switch_t ;
typedef int cl_list_t ;


 int CL_ASSERT (int) ;
 scalar_t__ MST_MEMBER ;
 scalar_t__ Q_MEMBER ;
 scalar_t__ cl_list_remove_head (int *) ;

__attribute__((used)) inline static void dequeue(cl_list_t * bfsq, switch_t ** sw)
{
 *sw = (switch_t *) cl_list_remove_head(bfsq);
 CL_ASSERT((*sw)->q_state == Q_MEMBER);
 (*sw)->q_state = MST_MEMBER;
}
