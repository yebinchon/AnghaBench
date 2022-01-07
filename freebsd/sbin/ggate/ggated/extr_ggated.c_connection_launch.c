
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ggd_connection {int c_path; } ;
typedef int pthread_t ;


 int LOG_DEBUG ;
 int LOG_ERR ;
 int disk_thread (struct ggd_connection*) ;
 int errno ;
 int fork () ;
 int g_gate_log (int ,char*,int ) ;
 int g_gate_xlog (char*,int ) ;
 int inqueue_cond ;
 int inqueue_mtx ;
 int outqueue_cond ;
 int outqueue_mtx ;
 int pthread_cond_init (int *,int *) ;
 int pthread_create (int *,int *,int ,struct ggd_connection*) ;
 int pthread_mutex_init (int *,int *) ;
 int recv_thread ;
 int send_thread ;
 int strerror (int) ;

__attribute__((used)) static void
connection_launch(struct ggd_connection *conn)
{
 pthread_t td;
 int error, pid;

 pid = fork();
 if (pid > 0)
  return;
 else if (pid == -1) {
  g_gate_log(LOG_ERR, "Cannot fork: %s.", strerror(errno));
  return;
 }
 g_gate_log(LOG_DEBUG, "Process created [%s].", conn->c_path);





 error = pthread_mutex_init(&inqueue_mtx, ((void*)0));
 if (error != 0) {
  g_gate_xlog("pthread_mutex_init(inqueue_mtx): %s.",
      strerror(error));
 }
 error = pthread_cond_init(&inqueue_cond, ((void*)0));
 if (error != 0) {
  g_gate_xlog("pthread_cond_init(inqueue_cond): %s.",
      strerror(error));
 }
 error = pthread_mutex_init(&outqueue_mtx, ((void*)0));
 if (error != 0) {
  g_gate_xlog("pthread_mutex_init(outqueue_mtx): %s.",
      strerror(error));
 }
 error = pthread_cond_init(&outqueue_cond, ((void*)0));
 if (error != 0) {
  g_gate_xlog("pthread_cond_init(outqueue_cond): %s.",
      strerror(error));
 }







 error = pthread_create(&td, ((void*)0), send_thread, conn);
 if (error != 0) {
  g_gate_xlog("pthread_create(send_thread): %s.",
      strerror(error));
 }
 error = pthread_create(&td, ((void*)0), recv_thread, conn);
 if (error != 0) {
  g_gate_xlog("pthread_create(recv_thread): %s.",
      strerror(error));
 }
 disk_thread(conn);
}
