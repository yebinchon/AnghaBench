
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct rdma_cm_id {int dummy; } ;
typedef int pthread_t ;
struct TYPE_10__ {int cond; int lock; int list; } ;
struct TYPE_9__ {int ai_port_space; } ;
struct TYPE_8__ {int ai_src_addr; } ;
struct TYPE_7__ {int cond; int lock; int list; } ;


 int INIT_LIST (int *) ;
 int channel ;
 int disc_handler_thread ;
 TYPE_6__ disc_work ;
 int dst_addr ;
 char* gai_strerror (int) ;
 int get_rdma_addr (int ,int ,int ,TYPE_3__*,TYPE_2__**) ;
 TYPE_3__ hints ;
 int perror (char*) ;
 int port ;
 int printf (char*,char*) ;
 int process_events (int *) ;
 int pthread_cond_init (int *,int *) ;
 int pthread_create (int *,int *,int ,int *) ;
 int pthread_mutex_init (int *,int *) ;
 TYPE_2__* rai ;
 int rdma_bind_addr (struct rdma_cm_id*,int ) ;
 int rdma_create_id (int ,struct rdma_cm_id**,int *,int ) ;
 int rdma_destroy_id (struct rdma_cm_id*) ;
 int rdma_listen (struct rdma_cm_id*,int ) ;
 int req_handler_thread ;
 TYPE_1__ req_work ;
 int src_addr ;

__attribute__((used)) static int run_server(void)
{
 pthread_t req_thread, disc_thread;
 struct rdma_cm_id *listen_id;
 int ret;

 INIT_LIST(&req_work.list);
 INIT_LIST(&disc_work.list);
 ret = pthread_mutex_init(&req_work.lock, ((void*)0));
 if (ret) {
  perror("initializing mutex for req work");
  return ret;
 }

 ret = pthread_mutex_init(&disc_work.lock, ((void*)0));
 if (ret) {
  perror("initializing mutex for disc work");
  return ret;
 }

 ret = pthread_cond_init(&req_work.cond, ((void*)0));
 if (ret) {
  perror("initializing cond for req work");
  return ret;
 }

 ret = pthread_cond_init(&disc_work.cond, ((void*)0));
 if (ret) {
  perror("initializing cond for disc work");
  return ret;
 }

 ret = pthread_create(&req_thread, ((void*)0), req_handler_thread, ((void*)0));
 if (ret) {
  perror("failed to create req handler thread");
  return ret;
 }

 ret = pthread_create(&disc_thread, ((void*)0), disc_handler_thread, ((void*)0));
 if (ret) {
  perror("failed to create disconnect handler thread");
  return ret;
 }

 ret = rdma_create_id(channel, &listen_id, ((void*)0), hints.ai_port_space);
 if (ret) {
  perror("listen request failed");
  return ret;
 }

 ret = get_rdma_addr(src_addr, dst_addr, port, &hints, &rai);
 if (ret) {
  printf("getrdmaaddr error: %s\n", gai_strerror(ret));
  goto out;
 }

 ret = rdma_bind_addr(listen_id, rai->ai_src_addr);
 if (ret) {
  perror("bind address failed");
  goto out;
 }

 ret = rdma_listen(listen_id, 0);
 if (ret) {
  perror("failure trying to listen");
  goto out;
 }

 process_events(((void*)0));
 out:
 rdma_destroy_id(listen_id);
 return ret;
}
