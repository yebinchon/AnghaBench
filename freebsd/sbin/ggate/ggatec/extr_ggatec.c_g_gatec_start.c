
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int ) ;
 int g_gate_destroy (int ,int) ;
 int g_gate_xlog (char*,int ) ;
 int pthread_create (int *,int *,int ,int *) ;
 int pthread_self () ;
 scalar_t__ reconnect ;
 int recv_thread ;
 int recvfd ;
 int recvtd ;
 int send_thread (int *) ;
 int sendfd ;
 int sendtd ;
 int strerror (int) ;
 int unit ;

__attribute__((used)) static void
g_gatec_start(void)
{
 int error;

 reconnect = 0;
 error = pthread_create(&recvtd, ((void*)0), recv_thread, ((void*)0));
 if (error != 0) {
  g_gate_destroy(unit, 1);
  g_gate_xlog("pthread_create(recv_thread): %s.",
      strerror(error));
 }
 sendtd = pthread_self();
 send_thread(((void*)0));

 close(sendfd);
 close(recvfd);
}
