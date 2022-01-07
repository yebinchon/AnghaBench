
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rping_cb {scalar_t__ state; int sem; int cm_id; } ;
struct rdma_conn_param {int responder_resources; int initiator_depth; int retry_count; } ;


 scalar_t__ CONNECTED ;
 int DEBUG_LOG (char*) ;
 int fprintf (int ,char*,scalar_t__) ;
 int memset (struct rdma_conn_param*,int ,int) ;
 int perror (char*) ;
 int rdma_connect (int ,struct rdma_conn_param*) ;
 int sem_wait (int *) ;
 int stderr ;

__attribute__((used)) static int rping_connect_client(struct rping_cb *cb)
{
 struct rdma_conn_param conn_param;
 int ret;

 memset(&conn_param, 0, sizeof conn_param);
 conn_param.responder_resources = 1;
 conn_param.initiator_depth = 1;
 conn_param.retry_count = 7;

 ret = rdma_connect(cb->cm_id, &conn_param);
 if (ret) {
  perror("rdma_connect");
  return ret;
 }

 sem_wait(&cb->sem);
 if (cb->state != CONNECTED) {
  fprintf(stderr, "wait for CONNECTED state %d\n", cb->state);
  return -1;
 }

 DEBUG_LOG("rmda_connect successful\n");
 return 0;
}
