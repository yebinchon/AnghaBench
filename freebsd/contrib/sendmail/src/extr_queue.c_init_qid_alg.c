
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LastQueuePid ;
 scalar_t__ LastQueueTime ;

void
init_qid_alg()
{
 LastQueueTime = 0;
 LastQueuePid = -1;
}
