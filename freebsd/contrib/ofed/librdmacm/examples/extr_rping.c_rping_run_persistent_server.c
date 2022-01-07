
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rping_cb {scalar_t__ state; int persistent_server_thread; int sem; } ;
typedef int pthread_attr_t ;


 scalar_t__ CONNECT_REQUEST ;
 int PTHREAD_CREATE_DETACHED ;
 struct rping_cb* clone_cb (struct rping_cb*) ;
 int fprintf (int ,char*,scalar_t__) ;
 int perror (char*) ;
 int pthread_attr_init (int *) ;
 int pthread_attr_setdetachstate (int *,int ) ;
 int pthread_create (int *,int *,int ,struct rping_cb*) ;
 int rping_bind_server (struct rping_cb*) ;
 int rping_persistent_server_thread ;
 int sem_wait (int *) ;
 int stderr ;

__attribute__((used)) static int rping_run_persistent_server(struct rping_cb *listening_cb)
{
 int ret;
 struct rping_cb *cb;
 pthread_attr_t attr;

 ret = rping_bind_server(listening_cb);
 if (ret)
  return ret;





 ret = pthread_attr_init(&attr);
 if (ret) {
  perror("pthread_attr_init");
  return ret;
 }
 ret = pthread_attr_setdetachstate(&attr, PTHREAD_CREATE_DETACHED);
 if (ret) {
  perror("pthread_attr_setdetachstate");
  return ret;
 }

 while (1) {
  sem_wait(&listening_cb->sem);
  if (listening_cb->state != CONNECT_REQUEST) {
   fprintf(stderr, "wait for CONNECT_REQUEST state %d\n",
    listening_cb->state);
   return -1;
  }

  cb = clone_cb(listening_cb);
  if (!cb)
   return -1;

  ret = pthread_create(&cb->persistent_server_thread, &attr, rping_persistent_server_thread, cb);
  if (ret) {
   perror("pthread_create");
   return ret;
  }
 }
 return 0;
}
