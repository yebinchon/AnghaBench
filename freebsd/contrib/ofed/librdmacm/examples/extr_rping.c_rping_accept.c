
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rping_cb {scalar_t__ state; int sem; int child_cm_id; } ;


 int DEBUG_LOG (char*) ;
 scalar_t__ ERROR ;
 int fprintf (int ,char*,scalar_t__) ;
 int perror (char*) ;
 int rdma_accept (int ,int *) ;
 int sem_wait (int *) ;
 int stderr ;

__attribute__((used)) static int rping_accept(struct rping_cb *cb)
{
 int ret;

 DEBUG_LOG("accepting client connection request\n");

 ret = rdma_accept(cb->child_cm_id, ((void*)0));
 if (ret) {
  perror("rdma_accept");
  return ret;
 }

 sem_wait(&cb->sem);
 if (cb->state == ERROR) {
  fprintf(stderr, "wait for CONNECTED state %d\n", cb->state);
  return -1;
 }
 return 0;
}
