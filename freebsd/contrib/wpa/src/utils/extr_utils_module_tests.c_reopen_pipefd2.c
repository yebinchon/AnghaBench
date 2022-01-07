
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_eloop {int* pipefd2; } ;


 int MSG_INFO ;
 int close (int) ;
 int eloop_register_read_sock (int,int ,struct test_eloop*,int *) ;
 int eloop_test_read_2_wrong ;
 int eloop_unregister_read_sock (int) ;
 int errno ;
 int pipe (int*) ;
 int strerror (int ) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static void reopen_pipefd2(struct test_eloop *t)
{
 if (t->pipefd2[0] < 0) {
  wpa_printf(MSG_INFO, "pipefd2 had been closed");
 } else {
  int res;

  wpa_printf(MSG_INFO, "close pipefd2");
  eloop_unregister_read_sock(t->pipefd2[0]);
  close(t->pipefd2[0]);
  t->pipefd2[0] = -1;
  close(t->pipefd2[1]);
  t->pipefd2[1] = -1;

  res = pipe(t->pipefd2);
  if (res < 0) {
   wpa_printf(MSG_INFO, "pipe: %s", strerror(errno));
   t->pipefd2[0] = -1;
   t->pipefd2[1] = -1;
   return;
  }

  wpa_printf(MSG_INFO,
      "re-register pipefd2 with new sockets %d,%d",
      t->pipefd2[0], t->pipefd2[1]);
  eloop_register_read_sock(t->pipefd2[0], eloop_test_read_2_wrong,
      t, ((void*)0));
 }
}
